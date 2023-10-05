/**
 * Author:HouGe
 * Date:2023/9/22
 * Describe:
 */

import { rankData1, rankData2 } from '../model/DataSource';
import { RankModel } from '../model/RankModel';

export class RankViewModel {
  initializeOnStartup(dataSource: any[]): Array<RankModel> {
    let dataArray: Array<RankModel> = []
    dataSource.forEach(item => {
      dataArray.push(new RankModel(item.name, item.vote, item.id));
    })
    return dataArray;
  }

  loadRankDataSource1(): RankModel[] {
    return this.initializeOnStartup(rankData1);
  }

  loadRankDataSource2(): RankModel[] {
    return this.initializeOnStartup(rankData2);
  }
}