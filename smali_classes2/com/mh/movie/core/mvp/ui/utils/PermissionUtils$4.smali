.class final Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$4;
.super Ljava/lang/Object;
.source "PermissionUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->showPermissionSettingDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$4;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 314
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$4;->val$mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/jess/arms/c/e;->g(Landroid/content/Context;)V

    .line 315
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
