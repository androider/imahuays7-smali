.class Lcom/mh/movie/core/mvp/ui/utils/RuntimeRationale$2;
.super Ljava/lang/Object;
.source "RuntimeRationale.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/utils/RuntimeRationale;->showRationale(Landroid/content/Context;Ljava/util/List;Lcom/yanzhenjie/permission/RequestExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mh/movie/core/mvp/ui/utils/RuntimeRationale;

.field final synthetic val$executor:Lcom/yanzhenjie/permission/RequestExecutor;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/utils/RuntimeRationale;Lcom/yanzhenjie/permission/RequestExecutor;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/RuntimeRationale$2;->this$0:Lcom/mh/movie/core/mvp/ui/utils/RuntimeRationale;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/utils/RuntimeRationale$2;->val$executor:Lcom/yanzhenjie/permission/RequestExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/RuntimeRationale$2;->val$executor:Lcom/yanzhenjie/permission/RequestExecutor;

    invoke-interface {p1}, Lcom/yanzhenjie/permission/RequestExecutor;->execute()V

    return-void
.end method
