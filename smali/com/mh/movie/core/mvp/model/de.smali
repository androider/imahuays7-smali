.class final synthetic Lcom/mh/movie/core/mvp/model/de;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field static final a:Lio/reactivex/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mh/movie/core/mvp/model/de;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/de;-><init>()V

    sput-object v0, Lcom/mh/movie/core/mvp/model/de;->a:Lio/reactivex/functions/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/rx_cache2/n;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/model/UserModel$1;->a(Lio/rx_cache2/n;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
