.class Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SetInvitationBindActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity_ViewBinding;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity_ViewBinding$1;->b:Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity_ViewBinding;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity_ViewBinding$1;->a:Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity_ViewBinding$1;->a:Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity;->onClick()V

    return-void
.end method
