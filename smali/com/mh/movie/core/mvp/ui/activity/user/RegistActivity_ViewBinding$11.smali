.class Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding$11;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "RegistActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding$11;->b:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding$11;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding$11;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
