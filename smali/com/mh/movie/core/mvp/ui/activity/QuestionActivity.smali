.class public Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "QuestionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mh/movie/core/mvp/a/ao$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/QuestionPresenter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/mh/movie/core/mvp/a/ao$b;"
    }
.end annotation


# instance fields
.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/ui/widget/QuestionView;",
            ">;"
        }
    .end annotation
.end field

.field etQuestionSuggest:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c00c9
    .end annotation
.end field

.field qv1:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02a8
    .end annotation
.end field

.field qv10:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02a9
    .end annotation
.end field

.field qv11:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02aa
    .end annotation
.end field

.field qv12:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02ab
    .end annotation
.end field

.field qv2:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02ac
    .end annotation
.end field

.field qv3:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02ad
    .end annotation
.end field

.field qv4:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02ae
    .end annotation
.end field

.field qv5:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02af
    .end annotation
.end field

.field qv6:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02b0
    .end annotation
.end field

.field qv7:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02b1
    .end annotation
.end field

.field qv8:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02b2
    .end annotation
.end field

.field qv9:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02b3
    .end annotation
.end field

.field tvQuestionSubmit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c043f
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->c:Ljava/util/List;

    return-void
.end method

.method private f()V
    .locals 5

    .line 93
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv1:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mh/movie/core/R$string;->question_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2, v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->a(IZLjava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv1:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/mh/movie/core/R$array;->question_1_params:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->setData(Ljava/util/List;)V

    .line 95
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv1:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv2:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/mh/movie/core/R$string;->question_2:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2, v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->a(IZLjava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv2:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/mh/movie/core/R$array;->question_2_params:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->setData(Ljava/util/List;)V

    .line 99
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv2:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv3:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/mh/movie/core/R$string;->question_3:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2, v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->a(IZLjava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv3:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/mh/movie/core/R$array;->question_3_params:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->setData(Ljava/util/List;)V

    .line 103
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv3:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv4:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/mh/movie/core/R$string;->question_4:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2, v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->a(IZLjava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv4:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/mh/movie/core/R$array;->question_4_params:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->setData(Ljava/util/List;)V

    .line 107
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv4:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv5:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/mh/movie/core/R$string;->question_5:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2, v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->a(IZLjava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv5:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/mh/movie/core/R$array;->question_5_params:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->setData(Ljava/util/List;)V

    .line 112
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv5:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv6:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/mh/movie/core/R$string;->question_6:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2, v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->a(IZLjava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv6:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/mh/movie/core/R$array;->question_6_params:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->setData(Ljava/util/List;)V

    .line 116
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv6:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv7:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/mh/movie/core/R$string;->question_7:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v3, v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->a(IZLjava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv7:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/mh/movie/core/R$array;->question_7_params:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->setData(Ljava/util/List;)V

    .line 120
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv7:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv8:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/mh/movie/core/R$string;->question_8:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v0, v4, v3, v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->a(IZLjava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv8:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/mh/movie/core/R$array;->question_8_params:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->setData(Ljava/util/List;)V

    .line 124
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv8:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv9:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/mh/movie/core/R$string;->question_9:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x9

    invoke-virtual {v0, v4, v2, v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->a(IZLjava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv9:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/mh/movie/core/R$array;->question_9_params:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->setData(Ljava/util/List;)V

    .line 128
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv9:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv10:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/mh/movie/core/R$string;->question_10:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xa

    invoke-virtual {v0, v4, v2, v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->a(IZLjava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv10:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/mh/movie/core/R$array;->question_10_params:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->setData(Ljava/util/List;)V

    .line 132
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv10:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv11:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/mh/movie/core/R$string;->question_11:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xb

    invoke-virtual {v0, v4, v3, v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->a(IZLjava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv11:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/mh/movie/core/R$array;->question_11_params:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->setData(Ljava/util/List;)V

    .line 136
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv11:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv12:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/mh/movie/core/R$string;->question_12:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v2, v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->a(IZLjava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv12:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mh/movie/core/R$array;->question_12_params:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->setData(Ljava/util/List;)V

    .line 140
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv12:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->tvQuestionSubmit:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private g()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 192
    :goto_0
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 193
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->getCheckedList()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->r:Landroid/content/Context;

    const-string v4, "\u8bf7\u5b8c\u6210\u7b2c%s\u9898\u540e\u518d\u63d0\u4ea4\uff01"

    new-array v5, v3, [Ljava/lang/Object;

    add-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->etQuestionSuggest:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 199
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->r:Landroid/content/Context;

    const-string v2, "\u8bf7\u586b\u5199\u60a8\u5b9d\u8d35\u7684\u610f\u89c1\uff01"

    invoke-static {v1, v2}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return v0

    :cond_2
    return v3
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 84
    sget p1, Lcom/mh/movie/core/R$layout;->activity_question:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 75
    invoke-static {}, Lcom/mh/movie/core/a/a/az;->a()Lcom/mh/movie/core/a/a/az$a;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/az$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/az$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/de;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/de;-><init>(Lcom/mh/movie/core/mvp/a/ao$b;)V

    .line 77
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/az$a;->a(Lcom/mh/movie/core/a/b/de;)Lcom/mh/movie/core/a/a/az$a;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/az$a;->a()Lcom/mh/movie/core/a/a/cx;

    move-result-object p1

    .line 79
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/cx;->a(Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 89
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->f()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 226
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getMoney()I

    move-result v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->setMoney(I)V

    .line 227
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->r:Landroid/content/Context;

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "result"

    .line 228
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x123

    .line 229
    invoke-virtual {p0, v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 148
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()Lcom/mh/movie/core/mvp/model/entity/request/QuestionRequest;
    .locals 4

    .line 206
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/request/QuestionRequest;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/request/QuestionRequest;-><init>()V

    .line 208
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv1:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->getCheckedList()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "["

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/QuestionRequest;->setGender(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv2:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->getCheckedList()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "["

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/QuestionRequest;->setAge(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv3:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->getCheckedList()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "["

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/QuestionRequest;->setCareer(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv4:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->getCheckedList()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "["

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/QuestionRequest;->setUseApp(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv5:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->getCheckedList()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "["

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/QuestionRequest;->setSpendMoneyMonth(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv6:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->getCheckedList()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "["

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/QuestionRequest;->setSpendTimeWeek(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv7:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->getCheckedList()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "["

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/QuestionRequest;->setLikeVideoType(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv8:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->getCheckedList()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "["

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/QuestionRequest;->setLikeVideoSite(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv9:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->getCheckedList()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "["

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/QuestionRequest;->setLikeVideoStringention(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv10:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->getCheckedList()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "["

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/QuestionRequest;->setKnowMahuaWay(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv11:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->getCheckedList()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "["

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/QuestionRequest;->setChoseMahuaReason(Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->qv12:Lcom/mh/movie/core/mvp/ui/widget/QuestionView;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/QuestionView;->getCheckedList()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "["

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/QuestionRequest;->setChoseMahuaFunction(Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->etQuestionSuggest:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/QuestionRequest;->setFeedback(Ljava/lang/String;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 234
    invoke-super {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x123

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 237
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->setResult(I)V

    .line 238
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 184
    sget v0, Lcom/mh/movie/core/R$id;->tv_question_submit:I

    if-ne p1, v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/QuestionPresenter;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->e()Lcom/mh/movie/core/mvp/model/entity/request/QuestionRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/QuestionPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/request/QuestionRequest;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 165
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 167
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c017f,
            0x7f0c0180
        }
    .end annotation

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 173
    sget v0, Lcom/mh/movie/core/R$id;->iv_question_back:I

    if-ne p1, v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->onBackPressed()V

    goto :goto_0

    .line 175
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->iv_question_close:I

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    .line 176
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->setResult(I)V

    .line 177
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
