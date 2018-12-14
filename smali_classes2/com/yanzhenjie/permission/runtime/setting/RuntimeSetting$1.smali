.class Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting$1;
.super Ljava/lang/Object;
.source "RuntimeSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting;->onRequestCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting$1;->this$0:Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting$1;->this$0:Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting;

    invoke-static {v0}, Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting;->access$000(Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting;)Lcom/yanzhenjie/permission/Setting$Action;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting$1;->this$0:Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting;

    invoke-static {v0}, Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting;->access$000(Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting;)Lcom/yanzhenjie/permission/Setting$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/yanzhenjie/permission/Setting$Action;->onAction()V

    :cond_0
    return-void
.end method
