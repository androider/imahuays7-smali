.class Lcom/yanzhenjie/permission/install/ORequest$1;
.super Ljava/lang/Object;
.source "ORequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanzhenjie/permission/install/ORequest;->onRequestCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanzhenjie/permission/install/ORequest;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/permission/install/ORequest;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/yanzhenjie/permission/install/ORequest$1;->this$0:Lcom/yanzhenjie/permission/install/ORequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/yanzhenjie/permission/install/ORequest$1;->this$0:Lcom/yanzhenjie/permission/install/ORequest;

    invoke-static {v0}, Lcom/yanzhenjie/permission/install/ORequest;->access$000(Lcom/yanzhenjie/permission/install/ORequest;)V

    return-void
.end method
