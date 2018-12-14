.class Lcom/umeng/message/f$2$1;
.super Lcom/taobao/agoo/c;
.source "PushAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/f$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/umeng/message/f$2;


# direct methods
.method constructor <init>(Lcom/umeng/message/f$2;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/umeng/message/f$2$1;->b:Lcom/umeng/message/f$2;

    invoke-direct {p0}, Lcom/taobao/agoo/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .line 168
    sget-object v0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    invoke-static {}, Lcom/umeng/message/f;->u()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6ce8\u518c\u6210\u529f:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/umeng/message/f$2$1;->b:Lcom/umeng/message/f$2;

    iget-object v0, v0, Lcom/umeng/message/f$2;->a:Lcom/umeng/message/f;

    invoke-static {v0, p1}, Lcom/umeng/message/f;->a(Lcom/umeng/message/f;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 175
    sget-object v0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    invoke-static {}, Lcom/umeng/message/f;->u()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6ce8\u518c\u5931\u8d25-->s:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",s1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v3, v1}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/umeng/message/f$2$1;->b:Lcom/umeng/message/f$2;

    iget-object v0, v0, Lcom/umeng/message/f$2;->a:Lcom/umeng/message/f;

    invoke-static {v0, p1, p2}, Lcom/umeng/message/f;->a(Lcom/umeng/message/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object p1, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object p1, Lcom/umeng/message/b/g;->a:Ljava/lang/String;

    const-string p2, "\\|"

    invoke-static {p1, v3, p2}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
