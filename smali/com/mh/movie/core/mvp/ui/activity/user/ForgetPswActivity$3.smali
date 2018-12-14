.class Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$3;
.super Ljava/lang/Object;
.source "ForgetPswActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->b(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string p1, "motionEvent.getAction()"

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 184
    :pswitch_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->ibEye:Landroid/widget/ImageView;

    sget v0, Lcom/mh/movie/core/R$mipmap;->show_password_up:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->etPsw:Landroid/widget/EditText;

    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 180
    :pswitch_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->ibEye:Landroid/widget/ImageView;

    sget v0, Lcom/mh/movie/core/R$mipmap;->show_password_down:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->etPsw:Landroid/widget/EditText;

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
