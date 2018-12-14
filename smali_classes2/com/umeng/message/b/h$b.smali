.class public Lcom/umeng/message/b/h$b;
.super Ljava/lang/Object;
.source "MsgLogStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field final synthetic e:Lcom/umeng/message/b/h;


# direct methods
.method public constructor <init>(Lcom/umeng/message/b/h;Landroid/database/Cursor;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lcom/umeng/message/b/h$b;->e:Lcom/umeng/message/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "MsgId"

    .line 635
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/message/b/h$b;->a:Ljava/lang/String;

    const-string p1, "TaskId"

    .line 636
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/message/b/h$b;->b:Ljava/lang/String;

    const-string p1, "MsgStatus"

    .line 637
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/message/b/h$b;->c:Ljava/lang/String;

    const-string p1, "Time"

    .line 638
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/umeng/message/b/h$b;->d:J

    return-void
.end method
