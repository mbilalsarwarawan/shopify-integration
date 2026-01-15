"# Shopify Product Sync Application

## MGLogics Screening Challenge

An embedded Shopify App that enables seamless product transfer between stores with continuous real-time syncing capabilities.

## 🎯 Problem Statement

Create an embedded Shopify App that enables the transfer of products from one store to another and ensures continuous syncing of product data between the stores.

## 📋 User Story

1. **Store Selection**: After installing the app, the dashboard displays a select prompt to choose a target store
2. **Product Transfer**: Display products from source store and enable copying to target store
3. **Real-time Syncing**: Updates made to products in the source store automatically sync to the target store

## 🛠️ Technical Stack

- **Backend**: Ruby on Rails (latest version) with PostgreSQL
- **Shopify Integration**: `shopify_app` gem, Public App on Partners Dashboard
- **Frontend**: React with ESBuild
- **Background Jobs**: Rails Active Job (or Sidekiq)
- **Authentication**: Shopify OAuth flow
- **Syncing**: Webhooks for real-time updates

## 📊 Core Implementation Steps

### Key Requirements
1. **Rails Application**: Create with PostgreSQL
2. **Shopify App Gem**: Configure for embedded app
3. **Public App**: Create on Partners Dashboard
4. **Product Resource Picker**: Use App Bridge for product selection
5. **Background Jobs**: Handle product transfers
6. **Sync Functionality**: Link and sync products between stores
7. **React Frontend**: Display data and manage transfers

---

## 🚀 3-Day Implementation Roadmap

## **Day 1: Foundation & Shopify Integration Setup**

### **Morning: Rails App & Shopify Setup (2-3 hours)**
- [ ] Create new Rails application with PostgreSQL
- [ ] Install and configure `shopify_app` gem
- [ ] Create Shopify Partner app and get API credentials
- [ ] Set up basic Shopify app configuration
- [ ] Create Store and ProductSync models
- [ ] Run database migrations

### **Afternoon: Dashboard & Product Selection (2-3 hours)**
- [ ] Implement basic dashboard controller
- [ ] Set up embedded app routes
- [ ] Initialize React with ESBuild
- [ ] Create store selection dropdown
- [ ] Integrate Product Resource Picker from App Bridge

**Day 1 Deliverables:**
- ✅ Rails app with Shopify authentication working
- ✅ Basic dashboard with store selection dropdown
- ✅ Database models for stores and sync tracking
- ✅ React frontend scaffolded and App Bridge integrated

---

## **Day 2: Product Selection & Transfer System**

### **Product Transfer & Syncing (4-6 hours)**
- [ ] Implement product selection using Shopify Product Resource Picker
- [ ] Create background job for product transfer to target store
- [ ] Set up product syncing relationship between stores
- [ ] Implement basic webhook handler for product updates
- [ ] Create sync job to update products in target store

**Day 2 Deliverables:**
- ✅ Functional product selection interface with Resource Picker
- ✅ Complete product transfer workflow from source to target
- ✅ Sync relationships properly established and tracked
- ✅ Background job system operational with error handling

---

## **Day 3: Testing & Final Integration (2-4 hours)**
- [ ] Test the complete product transfer and sync flow
- [ ] Verify webhook functionality for real-time updates
- [ ] Test with actual Shopify stores
- [ ] Ensure React frontend integrates properly with Rails
- [ ] Final bug fixes and polishing


---

## 🔧 Development Environment Setup

### **Prerequisites**
- Ruby (latest version)
- Rails (latest version)
- **Neon DB account** (free at neon.tech)
- Node.js (for ESBuild)
- Shopify Partner account

### **Neon DB Setup**
1. Sign up at [neon.tech](https://neon.tech)
2. Create a new project
3. Copy the connection string from your dashboard
4. Use it as your DATABASE_URL

### **Key Dependencies**
```ruby
# Gemfile
gem 'shopify_app'      # Shopify app integration
gem 'shopify_api'      # Shopify API client
gem 'react-rails'      # React integration
gem 'esbuild-rails'    # JavaScript bundling
```

### **Environment Variables**
```bash
SHOPIFY_API_KEY=your_api_key
SHOPIFY_API_SECRET=your_api_secret
SHOPIFY_APP_URL=https://your-app-url.com
DATABASE_URL=postgresql://[username]:[password]@[host]/[database]?sslmode=require
```

**Note**: Get your DATABASE_URL from your Neon dashboard connection string.



### **High-Risk Areas**
1. **Shopify API Rate Limiting**: Implement exponential backoff and queuing
2. **Webhook Reliability**: Add fallback polling for critical updates
3. **Multi-store Authentication**: Proper session isolation and token management
4. **Data Consistency**: Implement sync conflict resolution
5. **Embedded App UX**: Test thoroughly across different store setups

### **Contingency Plans**
- Background job retries with exponential backoff
- Manual sync triggers for webhook failures
- Graceful degradation for API outages
- Comprehensive error logging and monitoring

---

" 
