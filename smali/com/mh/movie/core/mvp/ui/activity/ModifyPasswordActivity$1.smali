.class Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity$1;
.super Ljava/lang/Object;
.source "ModifyPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 94
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 100
    :pswitch_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->mIbEye:Landroid/widget/ImageView;

    sget v0, Lcom/mh/movie/core/R$mipmap;->show_password_up:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->etPsw:Landroid/widget/EditText;

    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->mIbEye:Landroid/widget/ImageView;

    sget v0, Lcom/mh/movie/core/R$mipmap;->show_password_down:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->etPsw:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    :goto_0
    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
