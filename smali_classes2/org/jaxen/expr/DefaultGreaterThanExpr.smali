.class Lorg/jaxen/expr/DefaultGreaterThanExpr;
.super Lorg/jaxen/expr/DefaultRelationalExpr;
.source "DefaultGreaterThanExpr.java"


# static fields
.field private static final serialVersionUID:J = 0x5887a81889ebfd93L


# direct methods
.method constructor <init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lorg/jaxen/expr/DefaultRelationalExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V

    return-void
.end method


# virtual methods
.method protected evaluateDoubleDouble(Ljava/lang/Double;Ljava/lang/Double;)Z
    .locals 0

    .line 69
    invoke-virtual {p1, p2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    const-string v0, ">"

    return-object v0
.end method
