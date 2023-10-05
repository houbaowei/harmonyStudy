/**
 * Author:HouGe
 * Date:2023/9/22
 * Describe:
 */

export class RankModel {
  public fruitName: Resource;
  public vote: string; // Number of votes
  public id: string;

  constructor(name: Resource, vote: string, id: string) {
    this.fruitName = name;
    this.vote = vote;
    this.id = id;
  }
}

