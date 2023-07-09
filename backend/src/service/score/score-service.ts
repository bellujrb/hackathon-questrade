import { Injectable } from '@nestjs/common';
import { BaseService } from '../base/baseService';
import { ScoreInputDto } from 'src/dto/score/score-dto';
import { persona } from 'src/mocks/mockScore';
import { parseISO, isBefore } from 'date-fns';

@Injectable()
export class ScoreService extends BaseService {
  async calculerScore(input: ScoreInputDto) {
    let debtsOpen = persona.paymentHistory;
    if (debtsOpen) {
      let totalDebts: number = 0;
      debtsOpen = debtsOpen.filter((debt) => {
        let dateNow = super.dateGenerator();
        let lateDebts = isBefore(parseISO(debt.date), parseISO(dateNow));
        if (debt.pay == false && lateDebts == true) {
          totalDebts += debt.amount;
          return true;
        }
        return false;
      });
      let score: any;

      const maxScore = 1000;    
      const minScore = 0;
      const incomeRatio = (input.current - totalDebts) / input.current;

      score = Math.round(incomeRatio * maxScore);
      score = score - debtsOpen.length * 8;
      score = Math.max(Math.min(score, maxScore), minScore);
      return score;
    }
  }
  maxMin() {
    return { res: { min: 0, max: 1000 }, status: 200 };
  }
}
