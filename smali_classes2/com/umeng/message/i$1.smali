.class Lcom/umeng/message/i$1;
.super Ljava/lang/Object;
.source "UmengAdHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/i;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/PowerManager;

.field final synthetic b:Lcom/umeng/message/i;


# direct methods
.method constructor <init>(Lcom/umeng/message/i;Landroid/os/PowerManager;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/umeng/message/i$1;->b:Lcom/umeng/message/i;

    iput-object p2, p0, Lcom/umeng/message/i$1;->a:Landroid/os/PowerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/umeng/message/i$1;->a:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method
