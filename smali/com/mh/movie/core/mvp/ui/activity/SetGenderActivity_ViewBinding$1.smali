.class Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SetGenderActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity_ViewBinding;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity_ViewBinding$1;->b:Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity_ViewBinding;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity_ViewBinding$1;->a:Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity_ViewBinding$1;->a:Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
