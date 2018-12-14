.class Lcom/umeng/message/f$1;
.super Landroid/os/Handler;
.source "PushAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/f;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/f;


# direct methods
.method constructor <init>(Lcom/umeng/message/f;Landroid/os/Looper;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/umeng/message/f$1;->a:Lcom/umeng/message/f;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
