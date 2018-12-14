.class final Lcom/flurry/sdk/dk$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/dk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dk;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/dk;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/flurry/sdk/dk$a;->a:Lcom/flurry/sdk/dk;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/dk;B)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/flurry/sdk/dk$a;-><init>(Lcom/flurry/sdk/dk;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 50
    invoke-static {}, Lcom/flurry/sdk/dk;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpRequest timed out. Cancelling."

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/flurry/sdk/dk$a;->a:Lcom/flurry/sdk/dk;

    invoke-static {v0}, Lcom/flurry/sdk/dk;->a(Lcom/flurry/sdk/dk;)Lcom/flurry/sdk/dl;

    move-result-object v0

    .line 1185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/flurry/sdk/dl;->n:J

    sub-long v7, v3, v5

    .line 1186
    sget-object v1, Lcom/flurry/sdk/dl;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Timeout ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "MS) for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/flurry/sdk/dl;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x275

    .line 1188
    iput v1, v0, Lcom/flurry/sdk/dl;->q:I

    const/4 v1, 0x1

    .line 1190
    iput-boolean v1, v0, Lcom/flurry/sdk/dl;->t:Z

    .line 1193
    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->e()V

    .line 1196
    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->f()V

    return-void
.end method
