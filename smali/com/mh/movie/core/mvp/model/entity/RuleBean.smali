.class public Lcom/mh/movie/core/mvp/model/entity/RuleBean;
.super Ljava/lang/Object;
.source "RuleBean.java"


# instance fields
.field private color:Ljava/lang/String;

.field private size:I

.field private text:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/RuleBean;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/RuleBean;->size:I

    return v0
.end method

.method public getText()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/RuleBean;->text:Ljava/util/List;

    return-object v0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/RuleBean;->color:Ljava/lang/String;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/RuleBean;->size:I

    return-void
.end method

.method public setText(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/RuleBean;->text:Ljava/util/List;

    return-void
.end method
