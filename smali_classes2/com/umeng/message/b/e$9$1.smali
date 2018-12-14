.class Lcom/umeng/message/b/e$9$1;
.super Ljava/lang/Object;
.source "Helper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/b/e$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/b/e$9;


# direct methods
.method constructor <init>(Lcom/umeng/message/b/e$9;)V
    .locals 0

    .line 1286
    iput-object p1, p0, Lcom/umeng/message/b/e$9$1;->a:Lcom/umeng/message/b/e$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1289
    iget-object v0, p0, Lcom/umeng/message/b/e$9$1;->a:Lcom/umeng/message/b/e$9;

    iget-object v0, v0, Lcom/umeng/message/b/e$9;->a:Landroid/content/Context;

    const-string v1, "mPushAgent.register\u65b9\u6cd5\u5e94\u8be5\u5728\u4e3b\u8fdb\u7a0b\u548cchannel\u8fdb\u7a0b\u4e2d\u90fd\u88ab\u8c03\u7528!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1290
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
