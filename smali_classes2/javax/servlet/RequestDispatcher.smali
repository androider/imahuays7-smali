.class public interface abstract Ljavax/servlet/RequestDispatcher;
.super Ljava/lang/Object;
.source "RequestDispatcher.java"


# static fields
.field public static final ERROR_EXCEPTION:Ljava/lang/String; = "javax.servlet.error.exception"

.field public static final ERROR_EXCEPTION_TYPE:Ljava/lang/String; = "javax.servlet.error.exception_type"

.field public static final ERROR_MESSAGE:Ljava/lang/String; = "javax.servlet.error.message"

.field public static final ERROR_REQUEST_URI:Ljava/lang/String; = "javax.servlet.error.request_uri"

.field public static final ERROR_SERVLET_NAME:Ljava/lang/String; = "javax.servlet.error.servlet_name"

.field public static final ERROR_STATUS_CODE:Ljava/lang/String; = "javax.servlet.error.status_code"

.field public static final FORWARD_CONTEXT_PATH:Ljava/lang/String; = "javax.servlet.forward.context_path"

.field public static final FORWARD_PATH_INFO:Ljava/lang/String; = "javax.servlet.forward.path_info"

.field public static final FORWARD_QUERY_STRING:Ljava/lang/String; = "javax.servlet.forward.query_string"

.field public static final FORWARD_REQUEST_URI:Ljava/lang/String; = "javax.servlet.forward.request_uri"

.field public static final FORWARD_SERVLET_PATH:Ljava/lang/String; = "javax.servlet.forward.servlet_path"

.field public static final INCLUDE_CONTEXT_PATH:Ljava/lang/String; = "javax.servlet.include.context_path"

.field public static final INCLUDE_PATH_INFO:Ljava/lang/String; = "javax.servlet.include.path_info"

.field public static final INCLUDE_QUERY_STRING:Ljava/lang/String; = "javax.servlet.include.query_string"

.field public static final INCLUDE_REQUEST_URI:Ljava/lang/String; = "javax.servlet.include.request_uri"

.field public static final INCLUDE_SERVLET_PATH:Ljava/lang/String; = "javax.servlet.include.servlet_path"


# virtual methods
.method public abstract forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract include(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
