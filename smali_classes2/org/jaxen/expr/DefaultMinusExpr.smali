.class Lorg/jaxen/expr/DefaultMinusExpr;
.super Lorg/jaxen/expr/DefaultAdditiveExpr;
.source "DefaultMinusExpr.java"


# static fields
.field private static final serialVersionUID:J = 0x59c4f467041a7a38L


# direct methods
.method constructor <init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lorg/jaxen/expr/DefaultAdditiveExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V

    return-void
.end method


# virtual methods
.method public evaluate(Lorg/jaxen/Context;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultMinusExpr;->getLHS()Lorg/jaxen/expr/Expr;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jaxen/expr/Expr;->evaluate(Lorg/jaxen/Context;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jaxen/function/NumberFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultMinusExpr;->getRHS()Lorg/jaxen/expr/Expr;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/jaxen/expr/Expr;->evaluate(Lorg/jaxen/Context;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/jaxen/function/NumberFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object p1

    .line 82
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 83
    new-instance p1, Ljava/lang/Double;

    invoke-direct {p1, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p1
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    const-string v0, "-"

    return-object v0
.end method
