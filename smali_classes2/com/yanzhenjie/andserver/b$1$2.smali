.class Lcom/yanzhenjie/andserver/b$1$2;
.super Ljava/lang/Thread;
.source "Core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanzhenjie/andserver/b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yanzhenjie/andserver/b$1;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/andserver/b$1;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/yanzhenjie/andserver/b$1$2;->a:Lcom/yanzhenjie/andserver/b$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/yanzhenjie/andserver/b$1$2;->a:Lcom/yanzhenjie/andserver/b$1;

    iget-object v0, v0, Lcom/yanzhenjie/andserver/b$1;->a:Lcom/yanzhenjie/andserver/b;

    invoke-static {v0}, Lcom/yanzhenjie/andserver/b;->k(Lcom/yanzhenjie/andserver/b;)Lorg/apache/httpcore/b/a/a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3, v1}, Lorg/apache/httpcore/b/a/a;->b(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method
