# frozen_string_literal: true

Role.find_or_create_by(name: 'InventoryManager')
Role.find_or_create_by(name: 'QualityCheckPerson')
Role.find_or_create_by(name: 'SalesManager')
Role.find_or_create_by(name: 'ITAdmin')
