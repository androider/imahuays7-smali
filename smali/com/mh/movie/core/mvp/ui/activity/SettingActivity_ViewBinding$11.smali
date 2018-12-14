.class Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$11;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SettingActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$11;->b:Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$11;->a:Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$11;->a:Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
