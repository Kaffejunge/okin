from okin.base.reaction import Reaction

class CDReaction(Reaction):
    def __init__(self, educts, arrow_type, products, arrow_id):
        print(f"In CDReaction {educts = }, {arrow_type}, {products = }, {arrow_id =}")
        super().__init__(educts=educts, arrow_type=arrow_type, products=products)
        self.id_ = arrow_id