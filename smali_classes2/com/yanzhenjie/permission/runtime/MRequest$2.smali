.class Lcom/yanzhenjie/permission/runtime/MRequest$2;
.super Ljava/lang/Object;
.source "MRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanzhenjie/permission/runtime/MRequest;->onRequestCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanzhenjie/permission/runtime/MRequest;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/permission/runtime/MRequest;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/yanzhenjie/permission/runtime/MRequest$2;->this$0:Lcom/yanzhenjie/permission/runtime/MRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/yanzhenjie/permission/runtime/MRequest$2;->this$0:Lcom/yanzhenjie/permission/runtime/MRequest;

    invoke-static {v0}, Lcom/yanzhenjie/permission/runtime/MRequest;->access$000(Lcom/yanzhenjie/permission/runtime/MRequest;)V

    return-void
.end method
