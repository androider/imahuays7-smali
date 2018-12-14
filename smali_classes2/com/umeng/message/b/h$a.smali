.class public Lcom/umeng/message/b/h$a;
.super Ljava/lang/Object;
.source "MsgLogStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:I

.field public d:Ljava/lang/String;

.field final synthetic e:Lcom/umeng/message/b/h;


# direct methods
.method public constructor <init>(Lcom/umeng/message/b/h;Landroid/database/Cursor;)V
    .locals 2

    .line 577
    iput-object p1, p0, Lcom/umeng/message/b/h$a;->e:Lcom/umeng/message/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "MsgId"

    .line 579
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/message/b/h$a;->a:Ljava/lang/String;

    const-string p1, "Time"

    .line 580
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/message/b/h$a;->b:J

    const-string p1, "ActionType"

    .line 581
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/umeng/message/b/h$a;->c:I

    const-string p1, "pa"

    .line 582
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/message/b/h$a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/umeng/message/b/h;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/umeng/message/b/h$a;->e:Lcom/umeng/message/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    iput-object p2, p0, Lcom/umeng/message/b/h$a;->a:Ljava/lang/String;

    .line 572
    iput p3, p0, Lcom/umeng/message/b/h$a;->c:I

    .line 573
    iput-wide p4, p0, Lcom/umeng/message/b/h$a;->b:J

    .line 574
    iput-object p6, p0, Lcom/umeng/message/b/h$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/ContentValues;
    .locals 4

    .line 586
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "MsgId"

    .line 587
    iget-object v2, p0, Lcom/umeng/message/b/h$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Time"

    .line 588
    iget-wide v2, p0, Lcom/umeng/message/b/h$a;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "ActionType"

    .line 589
    iget v2, p0, Lcom/umeng/message/b/h$a;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "pa"

    .line 590
    iget-object v2, p0, Lcom/umeng/message/b/h$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
