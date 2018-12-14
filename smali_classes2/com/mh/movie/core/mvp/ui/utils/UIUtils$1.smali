.class final Lcom/mh/movie/core/mvp/ui/utils/UIUtils$1;
.super Ljava/lang/Object;
.source "UIUtils.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->openWeb(Ljava/lang/String;IZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$downApkDialog:Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;

.field final synthetic val$mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/UIUtils$1;->val$mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/utils/UIUtils$1;->val$downApkDialog:Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/UIUtils$1;->val$downApkDialog:Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;->dismiss()V

    return-void
.end method

.method public onSure()V
    .locals 4

    .line 304
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/service/a;->a()Lcom/mh/movie/core/mvp/ui/service/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/utils/UIUtils$1;->val$mUrl:Ljava/lang/String;

    const-string v2, "apk\u4e0b\u8f7d"

    const-string v3, "apk\u4e0b\u8f7d"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mh/movie/core/mvp/ui/service/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/UIUtils$1;->val$downApkDialog:Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;->dismiss()V

    return-void
.end method
