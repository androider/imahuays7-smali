.class Lcom/yanzhenjie/permission/overlay/LRequest$1;
.super Ljava/lang/Object;
.source "LRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanzhenjie/permission/overlay/LRequest;->onRequestCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanzhenjie/permission/overlay/LRequest;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/permission/overlay/LRequest;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/yanzhenjie/permission/overlay/LRequest$1;->this$0:Lcom/yanzhenjie/permission/overlay/LRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/yanzhenjie/permission/overlay/LRequest$1;->this$0:Lcom/yanzhenjie/permission/overlay/LRequest;

    invoke-static {v0}, Lcom/yanzhenjie/permission/overlay/LRequest;->access$000(Lcom/yanzhenjie/permission/overlay/LRequest;)V

    return-void
.end method
