.class public Lcom/flurry/sdk/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ax$a;
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String; = "com.flurry.sdk.ax"


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:Z

.field public e:I

.field public f:Lcom/flurry/sdk/ay;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:J

.field public j:Z

.field public k:J

.field public l:Lcom/flurry/sdk/aw;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/aw;JJI)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lcom/flurry/sdk/ax;->k:J

    .line 32
    iput-object p1, p0, Lcom/flurry/sdk/ax;->l:Lcom/flurry/sdk/aw;

    .line 33
    iput-wide p2, p0, Lcom/flurry/sdk/ax;->b:J

    .line 34
    iput-wide p4, p0, Lcom/flurry/sdk/ax;->c:J

    .line 35
    iput p6, p0, Lcom/flurry/sdk/ax;->a:I

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/flurry/sdk/ax;->e:I

    .line 38
    sget-object p1, Lcom/flurry/sdk/ay;->d:Lcom/flurry/sdk/ay;

    iput-object p1, p0, Lcom/flurry/sdk/ax;->f:Lcom/flurry/sdk/ay;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/flurry/sdk/ax;->l:Lcom/flurry/sdk/aw;

    .line 1165
    iget-object v0, v0, Lcom/flurry/sdk/aw;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-boolean v0, p0, Lcom/flurry/sdk/ax;->d:Z

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/flurry/sdk/ax;->l:Lcom/flurry/sdk/aw;

    const/4 v1, 0x1

    .line 2150
    iput-boolean v1, v0, Lcom/flurry/sdk/aw;->m:Z

    :cond_0
    return-void
.end method
