.class public Lorg/fourthline/cling/binding/staging/MutableAction;
.super Ljava/lang/Object;
.source "MutableAction.java"


# instance fields
.field public arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/binding/staging/MutableActionArgument;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableAction;->arguments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lorg/fourthline/cling/model/meta/Action;
    .locals 3

    .line 33
    new-instance v0, Lorg/fourthline/cling/model/meta/Action;

    iget-object v1, p0, Lorg/fourthline/cling/binding/staging/MutableAction;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/staging/MutableAction;->createActionArgumennts()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/meta/Action;-><init>(Ljava/lang/String;[Lorg/fourthline/cling/model/meta/ActionArgument;)V

    return-object v0
.end method

.method public createActionArgumennts()[Lorg/fourthline/cling/model/meta/ActionArgument;
    .locals 5

    .line 37
    iget-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableAction;->arguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/ActionArgument;

    .line 39
    iget-object v1, p0, Lorg/fourthline/cling/binding/staging/MutableAction;->arguments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/binding/staging/MutableActionArgument;

    add-int/lit8 v4, v2, 0x1

    .line 40
    invoke-virtual {v3}, Lorg/fourthline/cling/binding/staging/MutableActionArgument;->build()Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v3

    aput-object v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method
