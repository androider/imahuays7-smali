.class final synthetic Lcom/mh/movie/core/app/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jess/arms/b/b/f$b;


# static fields
.field static final a:Lcom/jess/arms/b/b/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mh/movie/core/app/g;

    invoke-direct {v0}, Lcom/mh/movie/core/app/g;-><init>()V

    sput-object v0, Lcom/mh/movie/core/app/g;->a:Lcom/jess/arms/b/b/f$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lokhttp3/OkHttpClient$Builder;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/mh/movie/core/app/GlobalConfiguration;->a(Landroid/content/Context;Lokhttp3/OkHttpClient$Builder;)V

    return-void
.end method
