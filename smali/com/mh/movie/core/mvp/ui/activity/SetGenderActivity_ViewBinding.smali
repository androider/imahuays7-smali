.class public Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SetGenderActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;

    .line 34
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 35
    sget v0, Lcom/mh/movie/core/R$id;->tv_gender_male:I

    const-string v1, "field \'tvGenderMale\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->tvGenderMale:Landroid/widget/TextView;

    .line 36
    sget v0, Lcom/mh/movie/core/R$id;->cb_gender_male:I

    const-string v1, "field \'cbGenderMale\'"

    const-class v2, Landroid/widget/CheckBox;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->cbGenderMale:Landroid/widget/CheckBox;

    .line 37
    sget v0, Lcom/mh/movie/core/R$id;->et_name_female:I

    const-string v1, "field \'etNameFemale\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->etNameFemale:Landroid/widget/TextView;

    .line 38
    sget v0, Lcom/mh/movie/core/R$id;->cb_gender_female:I

    const-string v1, "field \'cbGenderFemale\'"

    const-class v2, Landroid/widget/CheckBox;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->cbGenderFemale:Landroid/widget/CheckBox;

    .line 39
    sget v0, Lcom/mh/movie/core/R$id;->ll_gender_male:I

    const-string v1, "method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity_ViewBinding;->b:Landroid/view/View;

    .line 41
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity_ViewBinding$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    sget v0, Lcom/mh/movie/core/R$id;->ll_gender_female:I

    const-string v1, "method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 48
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity_ViewBinding;->c:Landroid/view/View;

    .line 49
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity_ViewBinding$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;

    .line 64
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 65
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->tvGenderMale:Landroid/widget/TextView;

    .line 66
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->cbGenderMale:Landroid/widget/CheckBox;

    .line 67
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->etNameFemale:Landroid/widget/TextView;

    .line 68
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->cbGenderFemale:Landroid/widget/CheckBox;

    .line 70
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity_ViewBinding;->b:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity_ViewBinding;->c:Landroid/view/View;

    return-void
.end method
