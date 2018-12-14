.class public final Lcom/flurry/sdk/bn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/String;

.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:J

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Landroid/location/Location;

.field public o:I

.field public p:B

.field public q:Ljava/lang/Long;

.field public r:B

.field public s:Z

.field public t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/bi;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/bj;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public w:Z

.field public x:I

.field public y:I

.field public z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/bh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 14
    iput-wide v0, p0, Lcom/flurry/sdk/bn;->b:J

    .line 15
    iput-wide v0, p0, Lcom/flurry/sdk/bn;->c:J

    .line 16
    iput-wide v0, p0, Lcom/flurry/sdk/bn;->d:J

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/flurry/sdk/bn;->k:I

    const/4 v1, 0x0

    .line 27
    iput v1, p0, Lcom/flurry/sdk/bn;->l:I

    .line 30
    iput v0, p0, Lcom/flurry/sdk/bn;->o:I

    .line 31
    iput-byte v0, p0, Lcom/flurry/sdk/bn;->p:B

    .line 39
    iput-boolean v1, p0, Lcom/flurry/sdk/bn;->w:Z

    .line 40
    sget-object v1, Lcom/flurry/sdk/eq$b;->a:Lcom/flurry/sdk/eq$b;

    .line 1133
    iget v1, v1, Lcom/flurry/sdk/eq$b;->i:I

    .line 40
    iput v1, p0, Lcom/flurry/sdk/bn;->x:I

    .line 42
    iput v0, p0, Lcom/flurry/sdk/bn;->y:I

    return-void
.end method
