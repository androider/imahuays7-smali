.class Lcom/yanzhenjie/andserver/b$2;
.super Ljava/lang/Object;
.source "Core.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanzhenjie/andserver/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yanzhenjie/andserver/b;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/andserver/b;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/yanzhenjie/andserver/b$2;->a:Lcom/yanzhenjie/andserver/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/yanzhenjie/andserver/b$2;->a:Lcom/yanzhenjie/andserver/b;

    invoke-static {v0}, Lcom/yanzhenjie/andserver/b;->k(Lcom/yanzhenjie/andserver/b;)Lorg/apache/httpcore/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/yanzhenjie/andserver/b$2;->a:Lcom/yanzhenjie/andserver/b;

    invoke-static {v0}, Lcom/yanzhenjie/andserver/b;->k(Lcom/yanzhenjie/andserver/b;)Lorg/apache/httpcore/b/a/a;

    move-result-object v0

    const-wide/16 v1, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/httpcore/b/a/a;->b(JLjava/util/concurrent/TimeUnit;)V

    .line 178
    :cond_0
    invoke-static {}, Lcom/yanzhenjie/andserver/f/c;->a()Lcom/yanzhenjie/andserver/f/c;

    move-result-object v0

    new-instance v1, Lcom/yanzhenjie/andserver/b$2$1;

    invoke-direct {v1, p0}, Lcom/yanzhenjie/andserver/b$2$1;-><init>(Lcom/yanzhenjie/andserver/b$2;)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/andserver/f/c;->c(Ljava/lang/Runnable;)V

    return-void
.end method
