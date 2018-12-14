.class public Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "PlayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/b/b$a;",
        "Lcom/mh/movie/core/mvp/a/b/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static C:I = 0x0

.field public static e:I = 0xa

.field public static r:I


# instance fields
.field A:I

.field B:Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;

.field D:Lcom/mh/movie/core/mvp/model/db/TableCommodity;

.field E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field F:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private G:I

.field private H:[Ljava/lang/String;

.field private I:[Ljava/lang/Integer;

.field private J:I

.field private K:I

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryTaxDesc;",
            ">;"
        }
    .end annotation
.end field

.field private M:Lcom/mh/movie/core/mvp/ui/activity/player/view/c;

.field f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Landroid/app/Application;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/jess/arms/http/imageloader/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/jess/arms/integration/AppManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Landroid/os/Handler;

.field l:Ljava/lang/Runnable;

.field m:Z

.field n:I

.field o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

.field p:Z

.field q:Z

.field s:I

.field t:I

.field u:I

.field v:I

.field w:I

.field x:Ljava/lang/String;

.field y:I

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/mh/movie/core/mvp/a/b/b$a;Lcom/mh/movie/core/mvp/a/b/b$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    const/4 p1, 0x0

    .line 116
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->m:Z

    .line 117
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    const/4 p2, -0x1

    .line 119
    iput p2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->G:I

    const/4 p2, 0x0

    .line 120
    iput-object p2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->H:[Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->I:[Ljava/lang/Integer;

    const/4 p2, 0x1

    .line 122
    iput p2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->J:I

    .line 123
    iput p2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->K:I

    .line 124
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->p:Z

    .line 125
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->q:Z

    .line 128
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->s:I

    .line 129
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->t:I

    const/4 p1, 0x6

    .line 139
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c(I)Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->D:Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    .line 141
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->E:Ljava/util/ArrayList;

    .line 143
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->F:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic A(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)I
    .locals 2

    .line 94
    iget v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->K:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->K:I

    return v0
.end method

.method static synthetic B(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic C(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic D(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic E(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic F(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic G(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic H(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic I(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic J(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic K(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic L(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic M(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic N(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic O(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic P(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic Q(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic R(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic S(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic T(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic U(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/mh/movie/core/mvp/ui/activity/player/view/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->M:Lcom/mh/movie/core/mvp/ui/activity/player/view/c;

    return-object p0
.end method

.method static synthetic V(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic W(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->J:I

    return p0
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;I)I
    .locals 0

    .line 94
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->K:I

    return p1
.end method

.method public static a(Landroid/content/Context;III)V
    .locals 1

    .line 165
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->c()V

    if-lez p3, :cond_0

    .line 167
    sput p3, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->r:I

    .line 169
    :cond_0
    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-direct {p3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "columnId"

    .line 170
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "videoInfoId"

    .line 171
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;IIII)V
    .locals 1

    .line 208
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->c()V

    .line 209
    sput p4, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->r:I

    .line 210
    new-instance p4, Landroid/content/Intent;

    const-class v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-direct {p4, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "columnId"

    .line 211
    invoke-virtual {p4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "videoInfoId"

    .line 212
    invoke-virtual {p4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "videoId"

    .line 213
    invoke-virtual {p4, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, p4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IIII)V
    .locals 2

    .line 176
    sget v0, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->FROM_CACHE:I

    sput v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->r:I

    .line 177
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "localUrl"

    .line 178
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "videoInfoId"

    .line 179
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "videoId"

    .line 180
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    sput p5, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->C:I

    if-lez p5, :cond_0

    .line 182
    div-int p1, p4, p5

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    .line 183
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/16 p2, 0x63

    if-le p1, p2, :cond_1

    const/4 p4, 0x0

    :cond_1
    const-string p1, "localTime"

    .line 186
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IIIIZ)V
    .locals 2

    .line 191
    sget v0, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->FROM_CACHE:I

    sput v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->r:I

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "localUrl"

    .line 193
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "videoInfoId"

    .line 194
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "videoId"

    .line 195
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "arg_player_local_screen"

    .line 196
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 198
    sput p5, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->C:I

    if-lez p5, :cond_0

    .line 199
    div-int p1, p4, p5

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    .line 200
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/16 p2, 0x63

    if-le p1, p2, :cond_1

    const/4 p4, 0x0

    :cond_1
    const-string p1, "localTime"

    .line 203
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Ljava/util/List;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->b(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Ljava/util/List;Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;Z)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Ljava/util/List;Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;Z)V

    return-void
.end method

.method static final synthetic a(Lcom/raizlabs/android/dbflow/structure/b/a/g;Ljava/lang/Throwable;)V
    .locals 1

    const-string p0, "FlowManager"

    const-string v0, "save TableCommodity error"

    .line 1369
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;",
            ">;",
            "Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;",
            "Z)V"
        }
    .end annotation

    .line 864
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$a;

    invoke-interface {v0, p3}, Lcom/mh/movie/core/mvp/a/b/b$a;->a(Z)Lio/reactivex/Observable;

    move-result-object p3

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p3

    new-instance v6, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$5;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$6;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$6;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    .line 866
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$5;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;Ljava/util/List;)V

    .line 865
    invoke-virtual {p3, v6}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->L:Ljava/util/List;

    return-object p1
.end method

.method private b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;",
            ">;)V"
        }
    .end annotation

    .line 888
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/a/b/b$a;->b(Z)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    invoke-virtual {p0, v2, v3, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$7;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$8;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$8;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    .line 890
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$7;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;Ljava/util/List;)V

    .line 889
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic f(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic g(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic h(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic i(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic j(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic k(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic l(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic m(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic n(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic o(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic p(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic q(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic r(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic s(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic t(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic u(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic v(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic w(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic x(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic y(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->G:I

    return p0
.end method

.method private y()V
    .locals 0

    return-void
.end method

.method static synthetic z(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(Z)I
    .locals 2

    .line 429
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isSkipHeadAndEnd()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->I:[Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->I:[Ljava/lang/Integer;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public a(I)V
    .locals 0

    .line 329
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    return-void
.end method

.method public a(II)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 338
    :goto_0
    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoPageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 339
    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoPageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->setIsShow(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    :cond_1
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->F:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v1, p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->setVideoList(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 342
    :goto_2
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 343
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v2

    if-ne v2, p2, :cond_2

    const/4 v2, 0x1

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->setIsHighlight(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public a(III)V
    .locals 9

    .line 938
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c:Lcom/jess/arms/mvp/a;

    move-object v1, v0

    check-cast v1, Lcom/mh/movie/core/mvp/a/b/b$a;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getId()I

    move-result v3

    sget v5, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->e:I

    iget-object v6, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->E:Ljava/util/ArrayList;

    const/4 v4, 0x1

    move v2, p1

    move v7, p2

    move v8, p3

    invoke-interface/range {v1 .. v8}, Lcom/mh/movie/core/mvp/a/b/b$a;->a(IIIILjava/util/ArrayList;II)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v1, 0x0

    .line 939
    invoke-virtual {p0, p2, v0, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$14;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$15;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$15;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    .line 941
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$15;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1, p3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$14;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;I)V

    .line 940
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(IIII)V
    .locals 1

    .line 769
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mh/movie/core/mvp/a/b/b$a;->a(IIII)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 p4, 0x0

    .line 770
    invoke-virtual {p0, p2, p3, p4}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$41;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance p4, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$48;

    invoke-direct {p4, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$48;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    .line 772
    invoke-virtual {p4}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$48;->getType()Ljava/lang/reflect/Type;

    move-result-object p4

    invoke-direct {p2, p0, p3, p4}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$41;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 771
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(IIILjava/lang/String;)V
    .locals 3

    .line 598
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->u:I

    .line 599
    iput p3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->v:I

    .line 600
    iput p2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->w:I

    .line 602
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/b/b$b;->e()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 605
    :goto_0
    iput-boolean v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->p:Z

    if-eqz p4, :cond_2

    const/4 p4, 0x1

    goto :goto_1

    :cond_2
    const/4 p4, 0x0

    .line 606
    :goto_1
    sput-boolean p4, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    .line 607
    new-instance p4, Lcom/mh/movie/core/mvp/model/entity/request/VideoInfoDetailRequest;

    invoke-direct {p4}, Lcom/mh/movie/core/mvp/model/entity/request/VideoInfoDetailRequest;-><init>()V

    .line 608
    invoke-virtual {p4, p1}, Lcom/mh/movie/core/mvp/model/entity/request/VideoInfoDetailRequest;->setColumnId(I)V

    .line 609
    invoke-virtual {p4, p3}, Lcom/mh/movie/core/mvp/model/entity/request/VideoInfoDetailRequest;->setVideoId(I)V

    .line 610
    invoke-virtual {p4, p2}, Lcom/mh/movie/core/mvp/model/entity/request/VideoInfoDetailRequest;->setVideoInfoId(I)V

    .line 612
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$b;

    sget-boolean p2, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    invoke-interface {p1, v1, p2}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(ZZ)V

    .line 614
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$a;

    invoke-interface {p1, p4}, Lcom/mh/movie/core/mvp/a/b/b$a;->a(Lcom/mh/movie/core/mvp/model/entity/request/VideoInfoDetailRequest;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    .line 615
    invoke-virtual {p0, p2, p3, v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance p4, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$12;

    invoke-direct {p4, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$12;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    .line 617
    invoke-virtual {p4}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$12;->getType()Ljava/lang/reflect/Type;

    move-result-object p4

    invoke-direct {p2, p0, p3, p4}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 616
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(ILjava/lang/Integer;)V
    .locals 8

    .line 1177
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/b/b$a;->e(I)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v7, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$35;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$36;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$36;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    .line 1179
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$36;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$35;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;ILjava/lang/Integer;)V

    .line 1177
    invoke-virtual {v0, v7}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .line 1143
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->checkSendStr(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 1147
    :cond_0
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;-><init>()V

    const/4 v1, 0x0

    .line 1148
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->setChildId(I)V

    .line 1149
    invoke-virtual {v0, p2}, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->setContent(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 1150
    invoke-virtual {v0, p2}, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->setFlag(I)V

    .line 1151
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->setParentId(I)V

    .line 1152
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->setVideoId(I)V

    .line 1153
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->setVideoInfoId(I)V

    .line 1154
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$a;

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/a/b/b$a;->a(Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    invoke-virtual {p0, p2, v0, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$32;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$33;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$33;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    .line 1155
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$33;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$32;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 1154
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 9

    .line 696
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 697
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$a;

    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->G:I

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/b/b$a;->a(II)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    .line 698
    invoke-virtual {p0, v1, v3, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v8, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$34;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$34;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    .line 700
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$34;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-object v6, p3

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$23;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;ILjava/lang/Integer;Ljava/lang/String;)V

    .line 699
    invoke-virtual {v0, v8}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(IZ)V
    .locals 3

    .line 957
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    if-nez v0, :cond_0

    return-void

    .line 958
    :cond_0
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/request/PlayHistoryRequest;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/request/PlayHistoryRequest;-><init>()V

    .line 959
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/entity/request/PlayHistoryRequest;->setVideoInfoId(J)V

    .line 960
    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->G:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/entity/request/PlayHistoryRequest;->setVideoId(J)V

    .line 961
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/entity/request/PlayHistoryRequest;->setPlayTime(I)V

    .line 963
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    invoke-static {p1}, Lcom/jess/arms/c/a;->d(Landroid/content/Context;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    .line 964
    new-instance v1, Lcom/mh/movie/core/mvp/model/b/g;

    invoke-interface {p1}, Lcom/jess/arms/b/a/a;->c()Lcom/jess/arms/integration/IRepositoryManager;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/mh/movie/core/mvp/model/b/g;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    invoke-virtual {v1, v0}, Lcom/mh/movie/core/mvp/model/b/g;->a(Lcom/mh/movie/core/mvp/model/entity/request/PlayHistoryRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 965
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;-><init>(II)V

    .line 966
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->retryWhen(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$16;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$17;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$17;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    .line 968
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$17;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$16;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;Z)V

    .line 967
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 5

    .line 219
    iget v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "\u62b1\u6b49\uff0c\u8bd5\u770b\u4e2d\u65e0\u6cd5\u6295\u5c4f"

    .line 220
    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 223
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    sget-boolean v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    if-eqz v1, :cond_1

    const-string v1, "playUrl"

    .line 225
    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "playId"

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->z:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "playTitle"

    const-string v2, ""

    .line 227
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "playDurtion"

    .line 228
    sget v2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->C:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v1, "playUrl"

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->B:Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;->getM3u8PlayUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->B:Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;->getM3u8Format()Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;

    move-result-object v3

    iget v4, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    invoke-virtual {v3, v4}, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->getM3u8Format(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "playId"

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->G:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "playTitle"

    .line 232
    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "playType"

    .line 233
    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "playDurtion"

    .line 234
    iget v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->t:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    :goto_0
    sget v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)V
    .locals 4

    .line 532
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/NetworkUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 533
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getPlayType()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 535
    invoke-virtual {p0, v1, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(ILcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->H:[Ljava/lang/String;

    .line 536
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$b;

    const-string v0, "\u8bd5\u770b"

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->D:Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->D:Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    iget v1, v1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->money:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1, v0, v1, v2}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(Ljava/lang/String;IZ)V

    goto :goto_1

    .line 538
    :cond_1
    iget v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    invoke-virtual {p0, v0, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(ILcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->H:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 539
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 542
    :cond_2
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getPlayType()I

    move-result v0

    const/4 v3, 0x1

    if-lez v0, :cond_4

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 543
    invoke-virtual {p0, v1, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(ILcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->H:[Ljava/lang/String;

    .line 544
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bd5\u770b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->H:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->D:Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->D:Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    iget v2, v1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->money:I

    :cond_3
    invoke-interface {p1, v0, v2, v3}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(Ljava/lang/String;IZ)V

    goto :goto_1

    .line 546
    :cond_4
    iget v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    invoke-virtual {p0, v0, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(ILcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->H:[Ljava/lang/String;

    .line 547
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->H:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6d41\u91cf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/a/b/b$b;->b_(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;IZ)V
    .locals 7

    const/4 v0, 0x0

    .line 354
    sput-boolean v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    .line 356
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 357
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$b;

    const-string p2, "url_player_not_network_error"

    const-string p3, ""

    iget v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->s:I

    invoke-interface {p1, p2, p3, v0}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->j:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast v1, Lcom/mh/movie/core/mvp/a/b/b$b;

    invoke-interface {v1}, Lcom/mh/movie/core/mvp/a/b/b$b;->e()V

    :cond_1
    if-eqz p1, :cond_2

    .line 366
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v1

    iput v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->G:I

    .line 368
    :cond_2
    iput v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->s:I

    .line 369
    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->m:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getPlayType()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object v1

    if-nez v1, :cond_6

    .line 371
    :cond_3
    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    .line 372
    iput v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    .line 375
    :cond_4
    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    invoke-virtual {p0, v1, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(ILcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->H:[Ljava/lang/String;

    .line 376
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->H:[Ljava/lang/String;

    aget-object v1, v1, v2

    if-eqz v1, :cond_7

    .line 377
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/NetworkUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    const-string v1, "\u6b63\u4f7f\u7528\u6d41\u91cf\u64ad\u653e%s\u6e05\u6670\u5ea6\uff0c\u672c\u89c6\u9891\u7ea6%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    invoke-static {v4}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->getClarityText(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v4, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->H:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 381
    :cond_6
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)V

    :cond_7
    :goto_1
    if-ltz p2, :cond_8

    .line 386
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(II)V

    .line 387
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$b;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->F:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(Ljava/util/List;)V

    goto/16 :goto_8

    :cond_8
    if-eqz p3, :cond_b

    const/4 p2, 0x0

    .line 390
    :goto_2
    iget-object p3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_a

    .line 391
    iget-object p3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v3

    if-ne v1, v3, :cond_9

    const/4 v1, 0x1

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p3, v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->setIsHighlight(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 393
    :cond_a
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$b;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(Ljava/util/List;)V

    goto/16 :goto_8

    .line 396
    :cond_b
    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->F:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_f

    .line 398
    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->F:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :cond_c
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz p3, :cond_d

    goto/16 :goto_8

    .line 402
    :cond_d
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    .line 403
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_c

    .line 404
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {v5}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v5

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v6

    if-ne v5, v6, :cond_e

    .line 405
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v1

    invoke-virtual {p0, p3, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(II)V

    const/4 p3, 0x1

    goto :goto_4

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_f
    const/4 p2, 0x0

    .line 413
    :goto_6
    iget-object p3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_11

    .line 414
    iget-object p3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v3

    if-ne v1, v3, :cond_10

    const/4 v1, 0x1

    goto :goto_7

    :cond_10
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {p3, v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->setIsHighlight(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 416
    :cond_11
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$b;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(Ljava/util/List;)V

    .line 419
    :cond_12
    :goto_8
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/a/b/b$b;->f()V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;)V
    .locals 3

    .line 1357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1358
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;->getCommodityInfoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;

    .line 1359
    new-instance v2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    invoke-direct {v2}, Lcom/mh/movie/core/mvp/model/db/TableCommodity;-><init>()V

    .line 1360
    invoke-virtual {v2, v1}, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->setData(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;)V

    .line 1361
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1364
    :cond_0
    const-class p1, Lcom/mh/movie/core/mvp/model/db/DbDatabase;

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->c(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/b;

    move-result-object p1

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    sget-object v2, Lcom/mh/movie/core/mvp/presenter/player/e;->a:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;

    invoke-direct {v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/e$c;)V

    .line 1367
    invoke-virtual {v1, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->a(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->a()Lcom/raizlabs/android/dbflow/structure/b/a/e;

    move-result-object v0

    .line 1365
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/config/b;->a(Lcom/raizlabs/android/dbflow/structure/b/a/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    sget-object v0, Lcom/mh/movie/core/mvp/presenter/player/f;->a:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    .line 1368
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->a(Lcom/raizlabs/android/dbflow/structure/b/a/g$b;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    .line 1372
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->a()Lcom/raizlabs/android/dbflow/structure/b/a/g;

    move-result-object p1

    .line 1373
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->b()V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/activity/player/view/c;)V
    .locals 0

    .line 1324
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->M:Lcom/mh/movie/core/mvp/ui/activity/player/view/c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 319
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/b/b$b;->c()V

    .line 321
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    sget-object v1, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->e:Ljava/lang/String;

    iget v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->s:I

    invoke-interface {v0, v1, p1, v2}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 323
    invoke-virtual {p0, v0, p1, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(ILjava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 8

    .line 815
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->checkSendStr(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c:Lcom/jess/arms/mvp/a;

    move-object v1, v0

    check-cast v1, Lcom/mh/movie/core/mvp/a/b/b$a;

    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->J:Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getNickName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result v6

    iget v7, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->G:I

    move-object v2, p1

    move v4, p2

    invoke-interface/range {v1 .. v7}, Lcom/mh/movie/core/mvp/a/b/b$a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Lio/reactivex/Observable;

    move-result-object p2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v2, 0x0

    .line 820
    invoke-virtual {p0, v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$51;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$2;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    .line 822
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$51;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;Ljava/lang/String;)V

    .line 821
    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/request/DownUrlRequest;",
            ">;)V"
        }
    .end annotation

    .line 1230
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/b/b$a;->a(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v2, 0x1

    .line 1231
    invoke-virtual {p0, v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$37;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$38;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$38;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    .line 1233
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$38;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$37;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 1232
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(ILcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    .line 458
    new-array v1, v0, [Ljava/lang/String;

    if-nez p2, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->j()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    move-result-object p2

    :cond_0
    if-nez p2, :cond_1

    return-object v1

    .line 465
    :cond_1
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v2

    iput v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->G:I

    .line 466
    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v0, :cond_2

    .line 467
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getStatEndTimeP()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$StatEndTimeP;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 468
    new-array v0, v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->I:[Ljava/lang/Integer;

    .line 469
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->I:[Ljava/lang/Integer;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getStatEndTimeP()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$StatEndTimeP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$StatEndTimeP;->getS()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    .line 470
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->I:[Ljava/lang/Integer;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getStatEndTimeP()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$StatEndTimeP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$StatEndTimeP;->getE()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    .line 475
    :cond_2
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;->getFormatExtra(I)Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object v0

    if-nez v0, :cond_4

    .line 476
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->autoDownGetM3u8FormatExtraIndex(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;I)I

    move-result v0

    if-gez v0, :cond_3

    .line 478
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->autoUpGetM3u8FormatExtraIndex(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;I)I

    move-result p1

    if-gez p1, :cond_4

    .line 480
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u83b7\u53d6\u5bf9\u5e94\u7684\u5206\u8fa8\u7387\u51fa\u9519\uff01"

    invoke-static {p1, p2}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-object v1

    :cond_3
    move p1, v0

    .line 486
    :cond_4
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    .line 487
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;->getFormatExtra(I)Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;->getSize()I

    move-result p1

    const-string v0, "%dM"

    .line 489
    new-array v2, v4, [Ljava/lang/Object;

    div-int/lit16 p1, p1, 0x400

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    .line 490
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getDuration()I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->t:I

    return-object v1
.end method

.method public b()V
    .locals 1

    .line 589
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 590
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 591
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->i:Lcom/jess/arms/integration/AppManager;

    .line 592
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->h:Lcom/jess/arms/http/imageloader/c;

    .line 593
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    .line 594
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->l()V

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 424
    iput v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->K:I

    const/4 v1, 0x0

    .line 425
    invoke-virtual {p0, v0, v1, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(III)V

    return-void
.end method

.method public b(II)V
    .locals 8

    .line 1029
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(Z)V

    .line 1030
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->F:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1031
    sget v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->k:I

    if-ne p2, v0, :cond_0

    .line 1032
    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->F:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {p0, p2, p1, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;IZ)V

    goto :goto_0

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->F:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {v0, p1, p2}, Lcom/mh/movie/core/mvp/a/b/b$b;->b(Ljava/util/List;I)V

    .line 1035
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$b;

    invoke-interface {p1, v1}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(Z)V

    :goto_0
    return-void

    .line 1039
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoPageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;

    .line 1040
    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v2, Lcom/mh/movie/core/mvp/a/b/b$a;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->getCurrentPage()I

    move-result v3

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->getPageSize()I

    move-result v0

    iget-object v4, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getId()I

    move-result v4

    invoke-interface {v2, v3, v0, v4}, Lcom/mh/movie/core/mvp/a/b/b$a;->a(III)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    .line 1041
    invoke-virtual {p0, v2, v3, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v7, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$25;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$26;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$26;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    .line 1043
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$26;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$25;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;II)V

    .line 1042
    invoke-virtual {v0, v7}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 3

    .line 240
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "videoInfoId"

    .line 241
    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "type"

    .line 242
    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    sget v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public b(Z)V
    .locals 5

    .line 554
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    if-nez p1, :cond_0

    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isContinuousPlay()Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_0
    iget p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 p1, 0x0

    const/4 v2, 0x0

    .line 557
    :goto_0
    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 558
    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v3

    iget v4, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->G:I

    if-ne v3, v4, :cond_7

    const/4 v3, 0x0

    .line 560
    :goto_1
    iget-object v4, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoPageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 561
    iget-object v4, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoPageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->getIsShow()I

    move-result v4

    if-ne v4, v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    .line 566
    :goto_2
    iget-object v4, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-eq v2, v4, :cond_4

    .line 567
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object v0

    add-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {p0, v0, v3, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;IZ)V

    goto :goto_4

    :cond_4
    if-eq v3, v0, :cond_6

    .line 569
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoPageList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    if-ne v3, p1, :cond_5

    goto :goto_3

    :cond_5
    add-int/2addr v3, v1

    .line 573
    sget p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->k:I

    invoke-virtual {p0, v3, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->b(II)V

    goto :goto_4

    :cond_6
    :goto_3
    const-string p1, "checkAutoPlay"

    const-string v0, "\u5168\u5267\u7ec8=========="

    .line 570
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_4
    return-void

    :cond_9
    :goto_5
    return-void
.end method

.method public c(I)Lcom/mh/movie/core/mvp/model/db/TableCommodity;
    .locals 4

    .line 522
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/q;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    invoke-direct {v0, v2}, Lcom/raizlabs/android/dbflow/sql/language/q;-><init>([Lcom/raizlabs/android/dbflow/sql/language/a/a;)V

    const-class v2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    invoke-virtual {v0, v2}, Lcom/raizlabs/android/dbflow/sql/language/q;->a(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/h;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/raizlabs/android/dbflow/sql/language/o;

    sget-object v3, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->authId:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/b;->a(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/m;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Lcom/raizlabs/android/dbflow/sql/language/h;->a([Lcom/raizlabs/android/dbflow/sql/language/o;)Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/s;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    return-object p1
.end method

.method public c(Landroid/app/Activity;)V
    .locals 6

    .line 247
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "columnId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 248
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "videoInfoId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->y:I

    .line 249
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "videoId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->z:I

    .line 250
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "localUrl"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->x:Ljava/lang/String;

    .line 251
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "localTime"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->A:I

    .line 253
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "arg_player_local_screen"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 255
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->x:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 258
    sput-boolean v4, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    .line 260
    sput-boolean v4, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    .line 261
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/a/b/b$b;->c()V

    .line 262
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$b;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->x:Ljava/lang/String;

    const-string v1, "\u64ad\u653e\u672c\u5730\u7f13\u5b58\u89c6\u9891"

    iget v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->A:I

    invoke-interface {p1, v0, v1, v2}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 263
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/player/d;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/presenter/player/d;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 265
    :cond_0
    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->y:I

    if-gez v1, :cond_1

    .line 266
    iget p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->y:I

    mul-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->y:I

    .line 267
    iput-boolean v4, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->q:Z

    goto :goto_0

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->x:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 270
    sput-boolean v4, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    .line 271
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/b/b$b;->c()V

    .line 272
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->x:Ljava/lang/String;

    const-string v4, "\u64ad\u653e\u672c\u5730\u7f13\u5b58\u89c6\u9891"

    iget v5, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->A:I

    invoke-interface {v0, v1, v4, v5}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 273
    sget v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->c:I

    if-ne v3, v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "durtaion"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "title"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(ILjava/lang/String;)V

    :cond_2
    return-void

    .line 278
    :cond_3
    :goto_0
    iget p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->y:I

    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->z:I

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->x:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(IIILjava/lang/String;)V

    .line 285
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->y()V

    return-void
.end method

.method public c(Z)V
    .locals 3

    .line 1332
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/b/b$a;->d()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    invoke-virtual {p0, v1, v2, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$46;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$47;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$47;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    .line 1335
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$47;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$46;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 1333
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public d(Landroid/app/Activity;)I
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "videoInfoId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getId()I

    move-result p1

    :goto_0
    return p1
.end method

.method public d(I)V
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 781
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getIsLike()I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    if-ne p1, v0, :cond_1

    .line 783
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getUnLike()I

    move-result v1

    if-ne v1, v0, :cond_1

    return-void

    .line 786
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c:Lcom/jess/arms/mvp/a;

    move-object v1, v0

    check-cast v1, Lcom/mh/movie/core/mvp/a/b/b$a;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getId()I

    move-result v2

    iget v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->G:I

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result v5

    move v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/mh/movie/core/mvp/a/b/b$a;->a(IILjava/lang/String;II)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    .line 787
    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$49;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$50;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$50;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    .line 789
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$50;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$49;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;I)V

    .line 788
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->E:Ljava/util/ArrayList;

    return-object v0
.end method

.method public e(I)V
    .locals 9

    .line 918
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c:Lcom/jess/arms/mvp/a;

    move-object v1, v0

    check-cast v1, Lcom/mh/movie/core/mvp/a/b/b$a;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getId()I

    move-result v3

    iget v4, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->K:I

    sget v5, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->e:I

    iget-object v6, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->E:Ljava/util/ArrayList;

    const/4 v2, 0x1

    const/4 v7, 0x0

    move v8, p1

    invoke-interface/range {v1 .. v8}, Lcom/mh/movie/core/mvp/a/b/b$a;->a(IIIILjava/util/ArrayList;II)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    .line 919
    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$11;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$13;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$13;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    .line 921
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$13;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$11;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;I)V

    .line 920
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    return-object v0
.end method

.method public f(I)V
    .locals 3

    .line 1071
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/b/b$a;->c(I)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v2, 0x0

    .line 1072
    invoke-virtual {p0, v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$27;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$28;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$28;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    .line 1074
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$28;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$27;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 1073
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public g()V
    .locals 1

    .line 298
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->s()V

    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 3

    .line 1128
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/b/b$a;->d(I)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$30;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$31;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$31;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    .line 1129
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$31;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$30;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 1128
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public h()I
    .locals 1

    .line 308
    iget v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->G:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 333
    iget v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    return v0
.end method

.method public j()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;
    .locals 3

    const/4 v0, 0x0

    .line 442
    :goto_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 443
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getIsHighlight()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 444
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    .line 445
    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->p:Z

    if-eqz v1, :cond_0

    .line 446
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getLastPlayTime()I

    move-result v1

    iput v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->s:I

    goto :goto_1

    .line 447
    :cond_0
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getLastPlayTime()I

    move-result v1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_3

    .line 448
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getLastPlayTime()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->s:I

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;",
            ">;"
        }
    .end annotation

    .line 496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 497
    :goto_0
    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 498
    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    .line 499
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v4

    iget v5, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->G:I

    if-ne v4, v5, :cond_3

    const/4 v2, 0x3

    :goto_1
    if-ltz v2, :cond_4

    .line 501
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;->getFormatExtra(I)Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 502
    new-instance v4, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;

    invoke-direct {v4}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;-><init>()V

    .line 504
    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->getClarityText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->setName(Ljava/lang/String;)V

    .line 505
    iget-object v5, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->B:Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;

    invoke-virtual {v5}, Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;->getM3u8Format()Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->getM3u8Format(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 506
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->B:Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;

    invoke-virtual {v6}, Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;->getM3u8PlayUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->B:Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;

    invoke-virtual {v6}, Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;->getM3u8Format()Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->getM3u8Format(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->setUrl(Ljava/lang/String;)V

    :cond_0
    const-string v5, "%dM"

    const/4 v6, 0x1

    .line 508
    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;->getFormatExtra(I)Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;->getSize()I

    move-result v8

    div-int/lit16 v8, v8, 0x400

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->setSize(Ljava/lang/String;)V

    .line 509
    iget v5, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    if-ne v5, v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v4, v6}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->setSelect(Z)V

    .line 510
    invoke-virtual {v4, v2}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->setResolution(I)V

    .line 511
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v0
.end method

.method public l()V
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 583
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->j:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public m()V
    .locals 4

    .line 843
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    if-nez v0, :cond_0

    return-void

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$a;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->G:I

    invoke-interface {v0, v1, v2}, Lcom/mh/movie/core/mvp/a/b/b$a;->a(Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    .line 847
    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$3;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$4;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$4;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    .line 849
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$3;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 848
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public n()V
    .locals 4

    .line 902
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$a;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->J:Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getInvitationCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/mh/movie/core/mvp/a/b/b$a;->b(Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    .line 903
    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$9;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$10;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$10;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    .line 905
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$10;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$9;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 904
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public o()V
    .locals 4

    .line 979
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    invoke-static {v0}, Lcom/jess/arms/c/a;->d(Landroid/content/Context;)Lcom/jess/arms/b/a/a;

    move-result-object v0

    .line 980
    new-instance v1, Lcom/mh/movie/core/mvp/model/b/g;

    invoke-interface {v0}, Lcom/jess/arms/b/a/a;->c()Lcom/jess/arms/integration/IRepositoryManager;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mh/movie/core/mvp/model/b/g;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    .line 981
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/b/g;->g()Lio/reactivex/Observable;

    move-result-object v0

    .line 982
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$18;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$19;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$19;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    .line 984
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$19;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$18;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 983
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public p()V
    .locals 4

    .line 994
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    if-nez v0, :cond_0

    return-void

    .line 997
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getFavorited()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 998
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$a;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/a/b/b$a;->b(I)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    .line 999
    invoke-virtual {p0, v1, v3, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$20;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$21;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$21;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    .line 1001
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$21;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$20;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 1000
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 1009
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$a;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/a/b/b$a;->a(I)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    .line 1010
    invoke-virtual {p0, v1, v3, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$22;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$24;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$24;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    .line 1012
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$24;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$22;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 1011
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :goto_0
    return-void
.end method

.method public q()V
    .locals 4

    .line 1083
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    if-eqz v0, :cond_0

    .line 1084
    iget v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->y:I

    sput v0, Lcom/mh/movie/core/mvp/ui/b;->A:I

    const/4 v0, 0x2

    .line 1085
    sput v0, Lcom/mh/movie/core/mvp/ui/b;->B:I

    goto :goto_0

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getId()I

    move-result v0

    sput v0, Lcom/mh/movie/core/mvp/ui/b;->A:I

    const/4 v0, 0x1

    .line 1089
    sput v0, Lcom/mh/movie/core/mvp/ui/b;->B:I

    .line 1090
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->k()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 1092
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->j:Landroid/os/Handler;

    .line 1093
    new-instance v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$29;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$29;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->l:Ljava/lang/Runnable;

    .line 1124
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public r()V
    .locals 4

    .line 1245
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/b/b$a;->b()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    .line 1246
    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$39;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$40;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$40;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    .line 1248
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$40;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$39;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 1247
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public s()V
    .locals 4

    .line 1277
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/b/b$a;->c()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    .line 1278
    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$42;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$43;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$43;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    .line 1280
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$43;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$42;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 1279
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public t()V
    .locals 4

    .line 1291
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$a;

    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->y:I

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/a/b/b$a;->f(I)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    .line 1292
    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$44;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$45;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$45;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V

    .line 1294
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$45;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$44;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 1293
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public u()Z
    .locals 3

    .line 1313
    invoke-static {}, Lcom/mh/movie/core/mvp/b/a;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1314
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g:Landroid/app/Application;

    const-string v2, "show_damu_and_comment_tip"

    invoke-static {v0, v2}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 1320
    iget v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n:I

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->getClarityNum(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryTaxDesc;",
            ">;"
        }
    .end annotation

    .line 1328
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->L:Ljava/util/List;

    return-object v0
.end method

.method final synthetic x()V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    sget v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->C:I

    mul-int/lit16 v1, v1, 0x3e8

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(ILjava/lang/String;)V

    return-void
.end method
