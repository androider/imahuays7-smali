.class public final Lcom/flurry/sdk/dj;
.super Lcom/flurry/sdk/dl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/dj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestObjectType:",
        "Ljava/lang/Object;",
        "ResponseObjectType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/sdk/dl;"
    }
.end annotation


# instance fields
.field public a:Lcom/flurry/sdk/dj$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/dj$a<",
            "TRequestObjectType;TResponseObjectType;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestObjectType;"
        }
    .end annotation
.end field

.field public c:Lcom/flurry/sdk/dx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/dx<",
            "TRequestObjectType;>;"
        }
    .end annotation
.end field

.field public d:Lcom/flurry/sdk/dx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/dx<",
            "TResponseObjectType;>;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResponseObjectType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/flurry/sdk/dl;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dj;)Ljava/lang/Object;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/flurry/sdk/dj;->b:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/flurry/sdk/dj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/flurry/sdk/dj;->v:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/dj;)Lcom/flurry/sdk/dx;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/flurry/sdk/dj;->c:Lcom/flurry/sdk/dx;

    return-object p0
.end method

.method static synthetic c(Lcom/flurry/sdk/dj;)Lcom/flurry/sdk/dx;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/flurry/sdk/dj;->d:Lcom/flurry/sdk/dx;

    return-object p0
.end method

.method static synthetic d(Lcom/flurry/sdk/dj;)V
    .locals 2

    .line 2081
    iget-object v0, p0, Lcom/flurry/sdk/dj;->a:Lcom/flurry/sdk/dj$a;

    if-eqz v0, :cond_0

    .line 2085
    invoke-virtual {p0}, Lcom/flurry/sdk/dj;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2089
    iget-object v0, p0, Lcom/flurry/sdk/dj;->a:Lcom/flurry/sdk/dj$a;

    iget-object v1, p0, Lcom/flurry/sdk/dj;->v:Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lcom/flurry/sdk/dj$a;->a(Lcom/flurry/sdk/dj;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1053
    new-instance v0, Lcom/flurry/sdk/dj$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/dj$1;-><init>(Lcom/flurry/sdk/dj;)V

    .line 1149
    iput-object v0, p0, Lcom/flurry/sdk/dl;->l:Lcom/flurry/sdk/dl$b;

    .line 48
    invoke-super {p0}, Lcom/flurry/sdk/dl;->a()V

    return-void
.end method
