.class Lcom/umeng/message/f$2;
.super Ljava/lang/Object;
.source "PushAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/f;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/f;


# direct methods
.method constructor <init>(Lcom/umeng/message/f;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/umeng/message/f$2;->a:Lcom/umeng/message/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "umeng:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/message/f$2;->a:Lcom/umeng/message/f;

    invoke-virtual {v1}, Lcom/umeng/message/f;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/umeng/message/f$2;->a:Lcom/umeng/message/f;

    invoke-virtual {v1}, Lcom/umeng/message/f;->d()Ljava/lang/String;

    move-result-object v1

    .line 163
    sget-object v2, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    invoke-static {}, Lcom/umeng/message/f;->u()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appkey:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",secret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x2

    invoke-static {v2, v5, v4}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 165
    :try_start_0
    iget-object v2, p0, Lcom/umeng/message/f$2;->a:Lcom/umeng/message/f;

    invoke-static {v2}, Lcom/umeng/message/f;->a(Lcom/umeng/message/f;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "android@umeng"

    new-instance v5, Lcom/umeng/message/f$2$1;

    invoke-direct {v5, p0}, Lcom/umeng/message/f$2$1;-><init>(Lcom/umeng/message/f$2;)V

    invoke-static {v2, v0, v1, v4, v5}, Lcom/taobao/agoo/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/agoo/c;)V
    :try_end_0
    .catch Lcom/taobao/accs/AccsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    sget-object v0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    invoke-static {}, Lcom/umeng/message/f;->u()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "\u6ce8\u518c\u5931\u8d25"

    aput-object v2, v1, v6

    invoke-static {v0, v6, v1}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    :goto_0
    return-void
.end method
