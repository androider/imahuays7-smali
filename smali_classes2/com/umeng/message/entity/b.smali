.class public Lcom/umeng/message/entity/b;
.super Ljava/lang/Object;
.source "UNotificationItem.java"


# instance fields
.field public a:I

.field public b:Lcom/umeng/message/entity/a;


# direct methods
.method public constructor <init>(ILcom/umeng/message/entity/a;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/umeng/message/entity/b;->a:I

    .line 12
    iput-object p2, p0, Lcom/umeng/message/entity/b;->b:Lcom/umeng/message/entity/a;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    .line 23
    :cond_1
    iget v1, p0, Lcom/umeng/message/entity/b;->a:I

    check-cast p1, Lcom/umeng/message/entity/b;

    iget p1, p1, Lcom/umeng/message/entity/b;->a:I

    if-ne v1, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method
