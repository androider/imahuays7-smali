.class final Lcom/umeng/message/b/e$9;
.super Ljava/lang/Object;
.source "Helper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/b/e;->b(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1278
    iput-object p1, p0, Lcom/umeng/message/b/e$9;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/umeng/message/b/e$9;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1281
    iget-object v0, p0, Lcom/umeng/message/b/e$9;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/d;->a(Landroid/content/Context;)Lcom/umeng/message/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/d;->y()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 1283
    sget-object v0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    invoke-static {}, Lcom/umeng/message/b/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mPushAgent.register\u65b9\u6cd5\u5e94\u8be5\u5728\u4e3b\u8fdb\u7a0b\u548cchannel\u8fdb\u7a0b\u4e2d\u90fd\u88ab\u8c03\u7528!"

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/umeng/commonsdk/a/e;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 1284
    sget-object v0, Lcom/umeng/commonsdk/a;->a:Lcom/umeng/commonsdk/a/e;

    sget-object v0, Lcom/umeng/message/b/g;->b:Ljava/lang/String;

    const-string v1, "\\|"

    invoke-static {v0, v2, v1}, Lcom/umeng/commonsdk/a/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x3

    if-ge v2, v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/umeng/message/b/e$9;->b:Landroid/os/Handler;

    new-instance v1, Lcom/umeng/message/b/e$9$1;

    invoke-direct {v1, p0}, Lcom/umeng/message/b/e$9$1;-><init>(Lcom/umeng/message/b/e$9;)V

    mul-int/lit16 v3, v2, 0xdac

    int-to-long v3, v3

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
