.class final synthetic Lcom/mh/movie/core/app/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jess/arms/b/b/a$a;


# static fields
.field static final a:Lcom/jess/arms/b/b/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mh/movie/core/app/e;

    invoke-direct {v0}, Lcom/mh/movie/core/app/e;-><init>()V

    sput-object v0, Lcom/mh/movie/core/app/e;->a:Lcom/jess/arms/b/b/a$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/gson/f;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/mh/movie/core/app/GlobalConfiguration;->a(Landroid/content/Context;Lcom/google/gson/f;)V

    return-void
.end method
