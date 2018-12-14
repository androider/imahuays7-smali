.class public Lorg/fourthline/cling/support/shared/TextExpand;
.super Ljava/lang/Object;
.source "TextExpand.java"


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/TextExpand;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/TextExpand;->text:Ljava/lang/String;

    return-object v0
.end method
