.class final Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$3;
.super Ljava/lang/Object;
.source "PermissionUtils.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->requestPermission(Landroid/content/Context;[Ljava/lang/String;Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$PermissionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$permissionCallback:Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$PermissionCallback;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$PermissionCallback;Landroid/content/Context;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$3;->val$permissionCallback:Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$PermissionCallback;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$3;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionFailure(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 298
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$3;->val$mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->access$000(Landroid/content/Context;)V

    return-void
.end method

.method public onRequestPermissionSuccess()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$3;->val$permissionCallback:Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$PermissionCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$3;->val$permissionCallback:Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$PermissionCallback;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$PermissionCallback;->onRequestSuccess()V

    :cond_0
    return-void
.end method
