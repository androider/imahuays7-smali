.class public Lcom/umeng/commonsdk/proguard/f;
.super Ljava/lang/Object;
.source "TProtocolUtil.java"


# static fields
.field private static a:I = 0x7fffffff


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/umeng/commonsdk/proguard/e;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 60
    sget v0, Lcom/umeng/commonsdk/proguard/f;->a:I

    invoke-static {p0, p1, v0}, Lcom/umeng/commonsdk/proguard/f;->a(Lcom/umeng/commonsdk/proguard/e;BI)V

    return-void
.end method

.method public static a(Lcom/umeng/commonsdk/proguard/e;BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    if-gtz p2, :cond_0

    .line 74
    new-instance p0, Lcom/umeng/commonsdk/proguard/r;

    const-string p1, "Maximum skip depth exceeded"

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/r;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 136
    :pswitch_1
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/e;->l()Lcom/umeng/commonsdk/proguard/c;

    move-result-object p1

    .line 137
    :goto_0
    iget v1, p1, Lcom/umeng/commonsdk/proguard/c;->b:I

    if-ge v0, v1, :cond_1

    .line 138
    iget-byte v1, p1, Lcom/umeng/commonsdk/proguard/c;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/proguard/f;->a(Lcom/umeng/commonsdk/proguard/e;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/e;->m()V

    goto/16 :goto_4

    .line 128
    :pswitch_2
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/e;->n()Lcom/umeng/commonsdk/proguard/g;

    move-result-object p1

    .line 129
    :goto_1
    iget v1, p1, Lcom/umeng/commonsdk/proguard/g;->b:I

    if-ge v0, v1, :cond_2

    .line 130
    iget-byte v1, p1, Lcom/umeng/commonsdk/proguard/g;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/proguard/f;->a(Lcom/umeng/commonsdk/proguard/e;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/e;->o()V

    goto :goto_4

    .line 119
    :pswitch_3
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/e;->j()Lcom/umeng/commonsdk/proguard/d;

    move-result-object p1

    .line 120
    :goto_2
    iget v1, p1, Lcom/umeng/commonsdk/proguard/d;->c:I

    if-ge v0, v1, :cond_3

    .line 121
    iget-byte v1, p1, Lcom/umeng/commonsdk/proguard/d;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/proguard/f;->a(Lcom/umeng/commonsdk/proguard/e;BI)V

    .line 122
    iget-byte v1, p1, Lcom/umeng/commonsdk/proguard/d;->b:B

    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/proguard/f;->a(Lcom/umeng/commonsdk/proguard/e;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 124
    :cond_3
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/e;->k()V

    goto :goto_4

    .line 106
    :pswitch_4
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/e;->f()Lcom/umeng/commonsdk/proguard/i;

    .line 108
    :goto_3
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/e;->h()Lcom/umeng/commonsdk/proguard/b;

    move-result-object p1

    .line 109
    iget-byte v0, p1, Lcom/umeng/commonsdk/proguard/b;->b:B

    if-nez v0, :cond_4

    .line 115
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/e;->g()V

    goto :goto_4

    .line 112
    :cond_4
    iget-byte p1, p1, Lcom/umeng/commonsdk/proguard/b;->b:B

    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Lcom/umeng/commonsdk/proguard/f;->a(Lcom/umeng/commonsdk/proguard/e;BI)V

    .line 113
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/e;->i()V

    goto :goto_3

    .line 102
    :pswitch_5
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/e;->w()Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 94
    :pswitch_6
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/e;->t()J

    goto :goto_4

    .line 90
    :pswitch_7
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/e;->s()I

    goto :goto_4

    .line 86
    :pswitch_8
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/e;->r()S

    goto :goto_4

    .line 98
    :pswitch_9
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/e;->u()D

    goto :goto_4

    .line 82
    :pswitch_a
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/e;->q()B

    goto :goto_4

    .line 78
    :pswitch_b
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/e;->p()Z

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
