.class Lcom/yanzhenjie/andserver/b$1$3;
.super Ljava/lang/Object;
.source "Core.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanzhenjie/andserver/b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/yanzhenjie/andserver/b$1;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/andserver/b$1;Ljava/lang/Exception;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/yanzhenjie/andserver/b$1$3;->b:Lcom/yanzhenjie/andserver/b$1;

    iput-object p2, p0, Lcom/yanzhenjie/andserver/b$1$3;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/yanzhenjie/andserver/b$1$3;->b:Lcom/yanzhenjie/andserver/b$1;

    iget-object v0, v0, Lcom/yanzhenjie/andserver/b$1;->a:Lcom/yanzhenjie/andserver/b;

    invoke-static {v0}, Lcom/yanzhenjie/andserver/b;->l(Lcom/yanzhenjie/andserver/b;)Lcom/yanzhenjie/andserver/e$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/yanzhenjie/andserver/b$1$3;->b:Lcom/yanzhenjie/andserver/b$1;

    iget-object v0, v0, Lcom/yanzhenjie/andserver/b$1;->a:Lcom/yanzhenjie/andserver/b;

    invoke-static {v0}, Lcom/yanzhenjie/andserver/b;->l(Lcom/yanzhenjie/andserver/b;)Lcom/yanzhenjie/andserver/e$b;

    move-result-object v0

    iget-object v1, p0, Lcom/yanzhenjie/andserver/b$1$3;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/yanzhenjie/andserver/e$b;->a(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
