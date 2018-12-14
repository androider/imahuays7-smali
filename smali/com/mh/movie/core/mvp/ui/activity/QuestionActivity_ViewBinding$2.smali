.class Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "QuestionActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity_ViewBinding;-><init>(Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity_ViewBinding$2;->b:Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity_ViewBinding;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity_ViewBinding$2;->a:Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity_ViewBinding$2;->a:Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
