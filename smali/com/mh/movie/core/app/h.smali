.class final synthetic Lcom/mh/movie/core/app/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jess/arms/b/b/f$d;


# static fields
.field static final a:Lcom/jess/arms/b/b/f$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mh/movie/core/app/h;

    invoke-direct {v0}, Lcom/mh/movie/core/app/h;-><init>()V

    sput-object v0, Lcom/mh/movie/core/app/h;->a:Lcom/jess/arms/b/b/f$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lio/rx_cache2/internal/j$a;)Lio/rx_cache2/internal/j;
    .locals 0

    invoke-static {p1, p2}, Lcom/mh/movie/core/app/GlobalConfiguration;->a(Landroid/content/Context;Lio/rx_cache2/internal/j$a;)Lio/rx_cache2/internal/j;

    move-result-object p1

    return-object p1
.end method
