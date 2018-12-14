.class public Lcom/mh/movie/core/mvp/presenter/player/j;
.super Ljava/lang/Object;
.source "RandomBarrageGenerate.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrage;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:Lcom/mh/movie/core/mvp/presenter/player/c;

.field private h:Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;


# direct methods
.method public constructor <init>(ILcom/mh/movie/core/mvp/model/entity/response/RandomBarrageMap;Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;I)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 49
    :pswitch_0
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageMap;->getType4()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->a:Ljava/util/List;

    goto :goto_0

    .line 46
    :pswitch_1
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageMap;->getType3()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->a:Ljava/util/List;

    goto :goto_0

    .line 43
    :pswitch_2
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageMap;->getType2()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->a:Ljava/util/List;

    goto :goto_0

    .line 40
    :pswitch_3
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageMap;->getType1()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->a:Ljava/util/List;

    .line 54
    :cond_0
    :goto_0
    iput-object p3, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->b:Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;

    .line 55
    iput p4, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->f:I

    .line 57
    new-instance p1, Lcom/mh/movie/core/mvp/presenter/player/c;

    invoke-direct {p1, p4}, Lcom/mh/movie/core/mvp/presenter/player/c;-><init>(I)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->g:Lcom/mh/movie/core/mvp/presenter/player/c;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(I)[I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 189
    new-array p1, v0, [I

    return-object p1

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->a:Ljava/util/List;

    if-nez v1, :cond_1

    .line 192
    new-array p1, v0, [I

    return-object p1

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->g:Lcom/mh/movie/core/mvp/presenter/player/c;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2, p1}, Lcom/mh/movie/core/mvp/presenter/player/c;->a(III)[I

    move-result-object p1

    return-object p1
.end method

.method private c()I
    .locals 5

    .line 166
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->b:Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 169
    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->b:Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;->getLimitDown()I

    move-result v2

    .line 170
    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->b:Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;->getLimitUp()I

    move-result v3

    if-ge v0, v2, :cond_1

    return v1

    :cond_1
    if-le v3, v0, :cond_2

    move v3, v0

    .line 175
    :cond_2
    iget-object v4, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->g:Lcom/mh/movie/core/mvp/presenter/player/c;

    invoke-virtual {v4, v2, v3}, Lcom/mh/movie/core/mvp/presenter/player/c;->a(II)I

    move-result v2

    .line 177
    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->a:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    if-ge v0, v2, :cond_4

    return v0

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method private c(I)[I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 205
    new-array p1, v0, [I

    return-object p1

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->a:Ljava/util/List;

    if-nez v1, :cond_1

    .line 208
    new-array p1, v0, [I

    return-object p1

    .line 212
    :cond_1
    iget v0, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->e:I

    div-int/lit16 v0, v0, 0x3e8

    .line 214
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->b:Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;->getTimeStart()I

    move-result v1

    .line 215
    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->b:Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;->getTimeEnd()I

    move-result v2

    if-le v2, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 222
    :goto_0
    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->g:Lcom/mh/movie/core/mvp/presenter/player/c;

    invoke-virtual {v2, v1, v0, p1}, Lcom/mh/movie/core/mvp/presenter/player/c;->b(III)[I

    move-result-object p1

    return-object p1
.end method

.method private d()V
    .locals 2

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->h:Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    if-nez v0, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/presenter/player/j;->e()Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->h:Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    .line 239
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->h:Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    if-nez v0, :cond_1

    .line 240
    new-instance v0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;-><init>()V

    .line 241
    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->f:I

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->saveItem(I)V

    .line 242
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->b:Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->setRandomRule(Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;)V

    .line 243
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->save()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 246
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private e()Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;
    .locals 7

    const/4 v0, 0x0

    .line 257
    :try_start_0
    new-instance v1, Lcom/raizlabs/android/dbflow/sql/language/q;

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    invoke-direct {v1, v3}, Lcom/raizlabs/android/dbflow/sql/language/q;-><init>([Lcom/raizlabs/android/dbflow/sql/language/a/a;)V

    const-class v3, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    invoke-virtual {v1, v3}, Lcom/raizlabs/android/dbflow/sql/language/q;->a(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/h;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/raizlabs/android/dbflow/sql/language/o;

    sget-object v4, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->videoId:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    iget v5, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/raizlabs/android/dbflow/sql/language/a/b;->a(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/m;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v1, v3}, Lcom/raizlabs/android/dbflow/sql/language/h;->a([Lcom/raizlabs/android/dbflow/sql/language/o;)Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/s;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 260
    :try_start_1
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->getRandomRule()Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->b:Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 264
    :goto_1
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_2
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->d:Ljava/util/List;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const-string v1, "TTT"

    .line 79
    invoke-static {v1}, Lb/a/a;->a(Ljava/lang/String;)Lb/a/a$a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "real:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/google/gson/e;

    invoke-direct {v3}, Lcom/google/gson/e;-><init>()V

    iget-object v4, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->d:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/gson/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lb/a/a$a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->b:Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;->getIsOpen()I

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 85
    :cond_2
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/presenter/player/j;->e()Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    move-result-object v1

    iput-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->h:Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    .line 88
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->b:Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;->getLimitNum()I

    move-result v2

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->h:Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    if-eqz v1, :cond_5

    .line 89
    :cond_3
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/presenter/player/j;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 90
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const-string v2, "TTT"

    .line 92
    invoke-static {v2}, Lb/a/a;->a(Ljava/lang/String;)Lb/a/a$a;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateBarrages:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/google/gson/e;

    invoke-direct {v5}, Lcom/google/gson/e;-><init>()V

    invoke-virtual {v5, v1}, Lcom/google/gson/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Lb/a/a$a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    return-object v0

    :cond_6
    :goto_0
    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->e:I

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->d:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->c:Ljava/util/List;

    .line 119
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->b:Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;->getTimeStart()I

    move-result v0

    .line 120
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->b:Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;->getTimeEnd()I

    move-result v1

    .line 121
    iget v2, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->e:I

    div-int/lit16 v2, v2, 0x3e8

    if-lt v1, v0, :cond_7

    if-eqz v0, :cond_7

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    if-ge v2, v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->c:Ljava/util/List;

    return-object v0

    .line 133
    :cond_1
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/presenter/player/j;->c()I

    move-result v0

    .line 135
    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/presenter/player/j;->b(I)[I

    move-result-object v1

    if-eqz v1, :cond_6

    .line 136
    array-length v2, v1

    if-nez v2, :cond_2

    goto :goto_2

    .line 138
    :cond_2
    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/presenter/player/j;->c(I)[I

    move-result-object v0

    if-eqz v0, :cond_5

    .line 139
    array-length v2, v0

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 142
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 143
    aget v3, v1, v2

    .line 144
    aget v4, v0, v2

    .line 146
    iget-object v5, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->a:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrage;

    .line 147
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrage;->getContent()Ljava/lang/String;

    move-result-object v3

    .line 149
    new-instance v5, Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;

    invoke-direct {v5}, Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;-><init>()V

    .line 150
    invoke-virtual {v5, v2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;->setId(I)V

    .line 151
    invoke-virtual {v5, v3}, Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;->setContent(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v5, v4}, Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;->setNodeTime(I)V

    .line 153
    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->c:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    :cond_4
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/presenter/player/j;->d()V

    .line 158
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->c:Ljava/util/List;

    return-object v0

    .line 139
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->c:Ljava/util/List;

    return-object v0

    .line 136
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->c:Ljava/util/List;

    return-object v0

    .line 124
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/j;->c:Ljava/util/List;

    return-object v0
.end method
