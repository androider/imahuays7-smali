.class final Lcom/google/android/exoplayer2/ui/PlayerControlView$a;
.super Lcom/google/android/exoplayer2/v$a;
.source "PlayerControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/exoplayer2/ui/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/ui/PlayerControlView;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 1040
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/v$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/ui/PlayerControlView$1;)V
    .locals 0

    .line 1040
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/ui/c;J)V
    .locals 0

    .line 1045
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1046
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Lcom/google/android/exoplayer2/ui/PlayerControlView;Z)Z

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/ui/c;JZ)V
    .locals 1

    .line 1058
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Lcom/google/android/exoplayer2/ui/PlayerControlView;Z)Z

    if-nez p4, :cond_0

    .line 1059
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/v;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1060
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Lcom/google/android/exoplayer2/ui/PlayerControlView;J)V

    .line 1062
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/ui/c;J)V
    .locals 2

    .line 1051
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1052
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/util/Formatter;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/google/android/exoplayer2/util/aa;->a(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1099
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/v;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1100
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1101
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    goto/16 :goto_1

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 1103
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    goto/16 :goto_1

    .line 1104
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 1105
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    goto/16 :goto_1

    .line 1106
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_3

    .line 1107
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    goto/16 :goto_1

    .line 1108
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_6

    .line 1109
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/v;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/v;->c()I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 1110
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->v(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/u;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1111
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->v(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/u;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/u;->a()V

    goto :goto_0

    .line 1113
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/v;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/v;->c()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 1114
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/c;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/v;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/v;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplayer2/v;->k()I

    move-result v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/google/android/exoplayer2/c;->a(Lcom/google/android/exoplayer2/v;IJ)Z

    .line 1116
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/c;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/v;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/c;->a(Lcom/google/android/exoplayer2/v;Z)Z

    goto :goto_1

    .line 1117
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_7

    .line 1118
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/c;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/v;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/c;->a(Lcom/google/android/exoplayer2/v;Z)Z

    goto :goto_1

    .line 1119
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->y(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne v0, p1, :cond_8

    .line 1120
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/c;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 1121
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/v;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/v;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/exoplayer2/v;->f()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->z(Lcom/google/android/exoplayer2/ui/PlayerControlView;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/r;->a(II)I

    move-result v1

    .line 1120
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/c;->a(Lcom/google/android/exoplayer2/v;I)Z

    goto :goto_1

    .line 1122
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->A(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_9

    .line 1123
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/c;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/v;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/v;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplayer2/v;->g()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/c;->b(Lcom/google/android/exoplayer2/v;Z)Z

    .line 1126
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0

    .line 1067
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    .line 1068
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    .line 1085
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    .line 1086
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    .line 1073
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    .line 1074
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 1079
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    .line 1080
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/ad;Ljava/lang/Object;I)V
    .locals 0

    .line 1092
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    .line 1093
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    .line 1094
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    return-void
.end method
