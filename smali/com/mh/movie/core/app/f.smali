.class final synthetic Lcom/mh/movie/core/app/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jess/arms/b/b/f$c;


# static fields
.field static final a:Lcom/jess/arms/b/b/f$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mh/movie/core/app/f;

    invoke-direct {v0}, Lcom/mh/movie/core/app/f;-><init>()V

    sput-object v0, Lcom/mh/movie/core/app/f;->a:Lcom/jess/arms/b/b/f$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lretrofit2/Retrofit$Builder;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/mh/movie/core/app/GlobalConfiguration;->a(Landroid/content/Context;Lretrofit2/Retrofit$Builder;)V

    return-void
.end method
