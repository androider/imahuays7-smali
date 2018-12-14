.class final Lcom/flurry/sdk/da$2$1;
.super Lcom/flurry/sdk/ep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/da$2;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/er;

.field final synthetic b:Lcom/flurry/sdk/da$2;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/da$2;Lcom/flurry/sdk/er;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/flurry/sdk/da$2$1;->b:Lcom/flurry/sdk/da$2;

    iput-object p2, p0, Lcom/flurry/sdk/da$2$1;->a:Lcom/flurry/sdk/er;

    invoke-direct {p0}, Lcom/flurry/sdk/ep;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method
