.class Lorg/fourthline/cling/support/shared/TextExpandDialog$1;
.super Lorg/seamless/xml/DOMParser;
.source "TextExpandDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/support/shared/TextExpandDialog;-><init>(Ljava/awt/Frame;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/shared/TextExpandDialog;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/shared/TextExpandDialog;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/TextExpandDialog$1;->this$0:Lorg/fourthline/cling/support/shared/TextExpandDialog;

    invoke-direct {p0}, Lorg/seamless/xml/DOMParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected createDOM(Lorg/w3c/dom/Document;)Lorg/seamless/xml/DOM;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
