.class Lorg/seamless/xhtml/XHTMLParser$2;
.super Lorg/seamless/xml/NamespaceContextMap;
.source "XHTMLParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/seamless/xhtml/XHTMLParser;->createDefaultNamespaceContext([Ljava/lang/String;)Lorg/seamless/xml/NamespaceContextMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/seamless/xhtml/XHTMLParser;


# direct methods
.method constructor <init>(Lorg/seamless/xhtml/XHTMLParser;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lorg/seamless/xhtml/XHTMLParser$2;->this$0:Lorg/seamless/xhtml/XHTMLParser;

    invoke-direct {p0}, Lorg/seamless/xml/NamespaceContextMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultNamespaceURI()Ljava/lang/String;
    .locals 1

    const-string v0, "http://www.w3.org/1999/xhtml"

    return-object v0
.end method
