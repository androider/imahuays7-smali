.class Lcom/yanzhenjie/andserver/b$2$1;
.super Ljava/lang/Object;
.source "Core.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanzhenjie/andserver/b$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yanzhenjie/andserver/b$2;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/andserver/b$2;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/yanzhenjie/andserver/b$2$1;->a:Lcom/yanzhenjie/andserver/b$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/yanzhenjie/andserver/b$2$1;->a:Lcom/yanzhenjie/andserver/b$2;

    iget-object v0, v0, Lcom/yanzhenjie/andserver/b$2;->a:Lcom/yanzhenjie/andserver/b;

    invoke-static {v0}, Lcom/yanzhenjie/andserver/b;->l(Lcom/yanzhenjie/andserver/b;)Lcom/yanzhenjie/andserver/e$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/yanzhenjie/andserver/b$2$1;->a:Lcom/yanzhenjie/andserver/b$2;

    iget-object v0, v0, Lcom/yanzhenjie/andserver/b$2;->a:Lcom/yanzhenjie/andserver/b;

    invoke-static {v0}, Lcom/yanzhenjie/andserver/b;->l(Lcom/yanzhenjie/andserver/b;)Lcom/yanzhenjie/andserver/e$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/yanzhenjie/andserver/e$b;->b()V

    :cond_0
    return-void
.end method
