.class Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "GetInviteFromFriendDialog_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding;Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding$3;->b:Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding$3;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding$3;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;->onClick(Landroid/view/View;)V

    return-void
.end method
