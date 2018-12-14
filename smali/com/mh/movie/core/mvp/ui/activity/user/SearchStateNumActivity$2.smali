.class Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$2;
.super Ljava/lang/Object;
.source "SearchStateNumActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 152
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;I)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;

    const/16 p2, 0x11

    invoke-static {p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;I)V

    :goto_0
    return-void
.end method
