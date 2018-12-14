.class public final Lcom/mh/movie/core/mvp/ui/utils/RuntimeRationale;
.super Ljava/lang/Object;
.source "RuntimeRationale.java"

# interfaces
.implements Lcom/yanzhenjie/permission/Rationale;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yanzhenjie/permission/Rationale<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic showRationale(Landroid/content/Context;Ljava/lang/Object;Lcom/yanzhenjie/permission/RequestExecutor;)V
    .locals 0

    .line 35
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/utils/RuntimeRationale;->showRationale(Landroid/content/Context;Ljava/util/List;Lcom/yanzhenjie/permission/RequestExecutor;)V

    return-void
.end method

.method public showRationale(Landroid/content/Context;Ljava/util/List;Lcom/yanzhenjie/permission/RequestExecutor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yanzhenjie/permission/RequestExecutor;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-static {p1, p2}, Lcom/yanzhenjie/permission/Permission;->transformText(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    const-string p2, "\u6211\u4eec\u9700\u8981\u7684\u6587\u4ef6\u8bfb\u53d6\u6743\u9650\u88ab\u60a8\u62d2\u7edd\u6216\u8005\u7cfb\u7edf\u53d1\u751f\u9519\u8bef\u7533\u8bf7\u5931\u8d25\uff0c\u8bf7\u60a8\u5230\u8bbe\u7f6e\u754c\u9762\u624b\u52a8\u7533\u8bf7\uff0c\u5426\u8005\u529f\u80fd\u65e0\u6cd5\u6b63\u5e38\u4f7f\u7528"

    .line 41
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 42
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u6743\u9650\u7533\u8bf7\u5931\u8d25"

    .line 43
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 44
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u53bb\u8bbe\u7f6e"

    new-instance v0, Lcom/mh/movie/core/mvp/ui/utils/RuntimeRationale$2;

    invoke-direct {v0, p0, p3}, Lcom/mh/movie/core/mvp/ui/utils/RuntimeRationale$2;-><init>(Lcom/mh/movie/core/mvp/ui/utils/RuntimeRationale;Lcom/yanzhenjie/permission/RequestExecutor;)V

    .line 45
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u53d6\u6d88"

    new-instance v0, Lcom/mh/movie/core/mvp/ui/utils/RuntimeRationale$1;

    invoke-direct {v0, p0, p3}, Lcom/mh/movie/core/mvp/ui/utils/RuntimeRationale$1;-><init>(Lcom/mh/movie/core/mvp/ui/utils/RuntimeRationale;Lcom/yanzhenjie/permission/RequestExecutor;)V

    .line 51
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
